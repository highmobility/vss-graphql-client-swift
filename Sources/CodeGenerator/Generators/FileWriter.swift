//
//  FileWriter.swift
//  
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Combine
import Foundation


@available(macOS 10.15, *)
struct FileWriter {

    let fileWritesPub: AnyPublisher<(Bool, OutputFile), Never>


    init(with filesPub: AnyPublisher<OutputFile, Never>) throws {
        print("- cleaning previous \(outputFolder.lastPathComponent) folder...")

        // Clean the output folder first
        if FileManager.default.fileExists(atPath: outputFolder.path) {
            try FileManager.default.removeItem(at: outputFolder)
        }

        try FileManager.default.createDirectory(at: outputFolder, withIntermediateDirectories: true)

        print("- converting to data and saving files...")

        // Write the files and output success
        fileWritesPub = filesPub
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
}
