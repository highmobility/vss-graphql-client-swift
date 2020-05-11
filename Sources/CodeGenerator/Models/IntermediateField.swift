//
//  IntermediateField.swift
//  
//
//  Created by Mikk Rätsep on 05.05.20.
//

import Foundation


@available(OSX 10.15, *)
class IntermediateField: DocsGeneratable {

    var name: String = ""
    var type: String = ""
    var isType: Bool = false
    var documentation: [String] = []
    var arguments: [IntermediateArgument] = []
}
