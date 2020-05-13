//
//  main.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 30.04.20.
//

import Combine
import Foundation


/*
 Generates VSS GraphQL models from it's schema, currently only works on macOS.

 Expects 2 arguments.
    -i, --input         - path to the VSS schema file
    -o, --output        - path to the output folder
 */


if #available(OSX 10.15, *) {
    // Get the arguments
    guard let inputArg = CommandLine.nextArg(afterFirstEncounter: "-i", "--input")?.trimmedWhitespaces,
        let outputArg = CommandLine.nextArg(afterFirstEncounter: "-o", "--output")?.trimmedWhitespaces else {
            fatalError("Missing required input arguments.")
    }

    // Set logging options
    CodeGenerator.logOthers = false
    CodeGenerator.logWrites = false

    // Try to generate the models and write them out
    do {
        try CodeGenerator.generate(inputPath: inputArg, outputPath: outputArg) {
            print("- done")
            exit(EXIT_SUCCESS)
        }
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
