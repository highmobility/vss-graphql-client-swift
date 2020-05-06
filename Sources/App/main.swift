//
//  File.swift
//  
//
//  Created by Mikk Rätsep on 30.04.20.
//

import Foundation
import HMVssGraphQLClient
import Combine


let url = URL(string: "http://localhost:4000")!
let client = HMVssGraphQLClient(url: url)
let semaphore = DispatchSemaphore(value: 0)


//client.executeRequest {
//    switch $0 {
//    case .failure(let error):
//        print("FAILurE:", error)
//
//    case .success(let vehicle):
//        print("SUCCESS:", vehicle)
//    }
//
//    semaphore.signal()
//}
//
//semaphore.wait()


//run()


if #available(OSX 10.15, *) {
    guard let inputFileIndex = CommandLine.arguments.firstIndex(where: { $0.hasPrefix("-i") || $0.hasPrefix("--input") }),
        let outputFileIndex = CommandLine.arguments.firstIndex(where: { $0.hasPrefix("-o") || $0.hasPrefix("--output") }) else {
            fatalError("No path to the schema file was specified")
    }

    let inputFileURL = URL(fileURLWithPath: CommandLine.arguments[inputFileIndex + 1].trimmingCharacters(in: .whitespacesAndNewlines))
    let outputFolderURL = URL(fileURLWithPath: CommandLine.arguments[outputFileIndex + 1].trimmingCharacters(in: .whitespacesAndNewlines))
    let generator = try! FilesGenerator(graphQLSpecFileURL: inputFileURL, outputFolderURL: outputFolderURL)

    RunLoop.main.run()
}



print("\nläbi")
