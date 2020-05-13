//
//  CodeGenerator.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 12.05.20.
//

import Combine
import Foundation


@available(macOS 10.15, *)
struct CodeGenerator {

    static var logOthers = false
    static var logWrites = false

    static private var cancellables: [AnyCancellable] = []


    static func generate(inputPath: String, outputPath: String, completion: @escaping () -> Void) throws {
        // Checks if the spec-file exists
        guard FileManager.default.fileExists(atPath: inputPath) else {
            fatalError("Schema file does not exist at path: \(inputPath)")
        }

        // Creates the URLs
        let inputFile = URL(fileURLWithPath: inputPath)
        let outputFolder = URL(fileURLWithPath: outputPath)

        // Extracts the spec-file's content
        let content = try String(contentsOf: inputFile, encoding: .utf8)


        // Creates "intermediate entities" publisher
        let genEntities = try GenEntitiesGenerator.publisher(fromSpecFileContent: content).makeConnectable()

        if logOthers {
            genEntities.sink(receiveCompletion: {
                print(1, "comp:", $0)
            }, receiveValue: { val in
                print(1, "val:", val)
            })
            .store(in: &cancellables)
        }


        // Creates "files content" publisher
        let fileContents = FilesContentGenerator.publisher(from: genEntities.eraseToAnyPublisher())

        if logOthers {
            fileContents.sink(receiveCompletion: {
                print(2, "comp:", $0)
            }, receiveValue: { val in
                print(2, "val:", val.count)
            })
            .store(in: &cancellables)
        }


        // Creates "output files" publisher
        let outputFiles = try OutputFilesGenerator.publisher(fromContentsPub: fileContents, entitiesPub: genEntities.eraseToAnyPublisher(), outputFolder: outputFolder)

        if logOthers {
            outputFiles.sink(receiveCompletion: {
                print(3, "comp:", $0)
            }, receiveValue: { val in
                print(3, "val:", val.name)
            })
            .store(in: &cancellables)
        }


        // Creates "writes" publisher
        let writes = try FileWriter.publisher(with: outputFiles, outputFolder: outputFolder)

        writes.sink(receiveCompletion: {
            if logWrites {
                print(4, "comp:", $0)
            }

            // Call the completion block
            completion()

        }, receiveValue: { success, outputFile in
            if logWrites {
                print(4, "val:", success, outputFile.name)
            }

            if !success {
                fatalError("Failed to save \(outputFile.name).swift to \(outputFolder.path)")
            }
        })
        .store(in: &cancellables)


        // Launch the first (and multi-used) publisher (basically starts the whole pipeline)
        genEntities
            .connect()
            .store(in: &cancellables)
    }
}
