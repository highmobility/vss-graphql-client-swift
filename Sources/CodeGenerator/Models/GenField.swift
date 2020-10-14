//
//  GenField.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 05.05.20.
//

import Foundation


@available(OSX 10.15, *)
class GenField: DocsGeneratable {

    var name: String = ""
    var type: String = ""
    var isType: Bool = false
    var documentation: [String] = []
    var arguments: [GenArgument] = []
}
