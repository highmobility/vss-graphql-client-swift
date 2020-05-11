//
//  File.swift
//  
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Combine
import Foundation


@available(macOS 10.15, *)
struct FileWriter {

    static func cleanOutputFolder(_ outputFolder: URL) throws {
        if FileManager.default.fileExists(atPath: outputFolder.path) {
            try FileManager.default.removeItem(at: outputFolder)
        }

        try FileManager.default.createDirectory(at: outputFolder, withIntermediateDirectories: true)
    }

    static func writePublisher(with filesPub: AnyPublisher<OutputFile, Never>) -> AnyPublisher<(Bool, OutputFile), Never> {
        filesPub
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
