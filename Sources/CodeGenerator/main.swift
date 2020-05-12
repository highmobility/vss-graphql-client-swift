//
//  main.swift
//  CodeGenerator
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


guard let inputArg = CommandLine.nextArg(afterFirstEncounter: "-i", "--input"),
    let outputArg = CommandLine.nextArg(afterFirstEncounter: "-o", "--output") else {
        fatalError("Missing required input arguments.")
}

if #available(OSX 10.15, *) {
    CodeGenerator.logOthers = false
    CodeGenerator.logWrites = false

    do {
        try CodeGenerator.generate(inputPath: inputArg.trimmedWhitespaces, outputPath: outputArg.trimmedWhitespaces) {
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
