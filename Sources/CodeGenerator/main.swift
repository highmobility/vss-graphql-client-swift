//
//  main.swift
//  
//
//  Created by Mikk Rätsep on 30.04.20.
//

import Combine
import Foundation


/*
 Generates VSS GraphQL models from it's spec, currently only works on macOS.

 Expects 2 arguments.
    -i, --input         - path to the VSS spec file
    -o, --output        - path to the output folder
 */

guard let inputFileIndex = CommandLine.arguments.firstIndex(where: { $0.hasPrefix("-i") || $0.hasPrefix("--input") }),
    let outputFileIndex = CommandLine.arguments.firstIndex(where: { $0.hasPrefix("-o") || $0.hasPrefix("--output") }) else {
        fatalError("Path(s) to the 'schema file' and/or 'output folder' were not specified")
}

let inputArg: String = CommandLine.arguments[inputFileIndex.advanced(by: 1)]
let outputArg: String = CommandLine.arguments[outputFileIndex.advanced(by: 1)]
let inputFile = URL(fileURLWithPath: inputArg.trimmedWhitespaces)
let outputFolder = URL(fileURLWithPath: outputArg.trimmedWhitespaces)

if #available(OSX 10.15, *) {
    do {
        var cancellables: [AnyCancellable] = []
        let content = try String(contentsOf: inputFile, encoding: .utf8)


        let genEntities = try GenEntitiesGenerator.publisher(fromSpecFileContent: content).makeConnectable()

        genEntities.sink(receiveCompletion: {
            print(1, "comp:", $0)
        }, receiveValue: { val in
            print(1, "val:", val)
        })
        .store(in: &cancellables)


        let fileContents = FilesContentGenerator.publisher(from: genEntities.eraseToAnyPublisher())

        fileContents.sink(receiveCompletion: {
            print(2, "comp:", $0)
        }, receiveValue: { val in
            print(2, "val:", val.count)
        })
        .store(in: &cancellables)


        let outputFiles = try OutputFilesGenerator.publisher(fromContentsPub: fileContents, entitiesPub: genEntities.eraseToAnyPublisher(), outputFolder: outputFolder)

        outputFiles.sink(receiveCompletion: {
            print(3, "comp:", $0)
        }, receiveValue: { val in
            print(3, "val:", val.name)
        })
        .store(in: &cancellables)


        let writes = try FileWriter.publisher(with: outputFiles)

        writes.sink(receiveCompletion: {
            print(4, "comp:", $0)
            exit(EXIT_SUCCESS)

        }, receiveValue: { success, outputFile in
            print(4, "val:", success, outputFile.name)

            if !success {
                fatalError("Failed to save \(outputFile.name).swift to \(outputFolder.path)")
            }
        })
        .store(in: &cancellables)


        // Launch the first (and multi-used) publisher
        genEntities
            .connect()
            .store(in: &cancellables)
    }
    catch {
        fatalError("Generator encountered an error: \(error)")
    }

    // Keep the program running while the generation is done async
    RunLoop.main.run()
}
else {
    fatalError("Generator is only usable on macOS")
}
