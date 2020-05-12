//
//  FileWriter.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Combine
import Foundation


@available(macOS 10.15, *)
struct FileWriter {

    static func publisher(with filesPub: AnyPublisher<OutputFile, Never>, outputFolder: URL) throws -> AnyPublisher<(Bool, OutputFile), Never> {
        print("- cleaning previous \(outputFolder.lastPathComponent) folder...")

        // Clean the output folder first
        if FileManager.default.fileExists(atPath: outputFolder.path) {
            try FileManager.default.removeItem(at: outputFolder)
        }

        try FileManager.default.createDirectory(at: outputFolder, withIntermediateDirectories: true)

        print("- converting to data and saving files...")

        // Write the files and output success
        return filesPub
            .map {
                Data($0.content.utf8)
            }
            .zip(filesPub)
            .tryMap { data, file in
                try data.write(to: file.path)

                return true
            }
            .replaceError(with: false)
            .zip(filesPub)
            .eraseToAnyPublisher()
    }


    private init() { }
}
