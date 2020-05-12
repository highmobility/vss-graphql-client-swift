//
//  File.swift
//  
//
//  Created by Mikk Rätsep on 30.04.20.
//

import Combine
import Foundation


guard let inputFileIndex = CommandLine.arguments.firstIndex(where: { $0.hasPrefix("-i") || $0.hasPrefix("--input") }),
    let outputFileIndex = CommandLine.arguments.firstIndex(where: { $0.hasPrefix("-o") || $0.hasPrefix("--output") }) else {
        fatalError("Path(s) to the 'schema file' and/or 'output folder' were not specified")
}

let inputArg: String = CommandLine.arguments[inputFileIndex.advanced(by: 1)]
let outputArg: String = CommandLine.arguments[outputFileIndex.advanced(by: 1)]
let inputFile = URL(fileURLWithPath: inputArg.trimmingCharacters(in: .whitespacesAndNewlines))
let outputFolder = URL(fileURLWithPath: outputArg.trimmingCharacters(in: .whitespacesAndNewlines))

if #available(OSX 10.15, *) {
//    let queue = OperationQueue()
//
//    queue.addOperation {
        do {
            var cancellables: [AnyCancellable] = []
            let content = try String(contentsOf: inputFile, encoding: .utf8)

            let intermediateEntitiesGen = try IntermediateEntitiesGenerator(fromSpecFileContent: content)
            let intermediateEntitiesPub = intermediateEntitiesGen.intermediateEntitiesPub.share()

//            intermediateEntitiesPub.sink { val in
//                print("0sinked:", val)
//            }
//            .store(in: &cancellables)

            let filesContentGen = FilesContentGenerator(from: intermediateEntitiesPub.eraseToAnyPublisher())
            let filesContentPub = filesContentGen.filesContentPub.share()

//            filesContentPub.sink { val in
//                print("1sinked:", val.count)
//            }
//            .store(in: &cancellables)

            let outputFilesGen = try OutputFilesGenerator(fromContentsPub: filesContentPub.eraseToAnyPublisher(), entitiesPub: intermediateEntitiesPub.eraseToAnyPublisher(), outputFolder: outputFolder)
            let outputFilesPub = outputFilesGen.outputFilesPub

            outputFilesPub.sink { val in
                print("2sinked:", val)
            }
            .store(in: &cancellables)

            let fileWriterGen = try FileWriter(with: outputFilesPub)
            let fileWritesPub = fileWriterGen.fileWritesPub

//            let entities = try IntermediateEntitiesGenerator.publisher(fromSpecFileContent: content)
//            let contents = FilesContentGenerator.publisher(from: entities)
//            let outputFiles = try OutputFilesGenerator.publisher(fromContentsPub: contents, entitiesPub: entities, outputFolder: outputFolder)
//            let writes = try FileWriter.writePublisher(with: outputFiles)

            // Create a sink for the pipeline,
            // finishes the process.
            fileWritesPub.sink(receiveCompletion: {
                print("- completion:", $0)
                exit(EXIT_SUCCESS)
                
            }, receiveValue: { success, outputFile in
                print(success, outputFile.name)

                if !success {
                    fatalError("Failed to save \(outputFile.name).swift to \(outputFolder.path)")
                }
            })
            .store(in: &cancellables)
        }
        catch {
            fatalError("Generator encountered an error: \(error)")
        }
//    }

    RunLoop.main.run()
}
else {
    fatalError("Generataor is only usable on macOS")
}
