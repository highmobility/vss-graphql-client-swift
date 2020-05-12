//
//  CommandLine+Extensions.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 12.05.20.
//

import Foundation


extension CommandLine {
    
    static func nextArg(afterFirstEncounter strs: String...) -> String? {
        let args = CommandLine.arguments

        guard let idx = CommandLine.arguments.firstIndex(where: { strs.contains($0)}),  // { arg.hasPrefix($0) }
            args.count >= (idx + 1) else {
                return nil
        }

        return args[idx + 1]
    }
}
