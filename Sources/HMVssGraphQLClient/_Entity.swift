//
//  File.swift
//  
//
//  Created by Mikk Rätsep on 05.05.20.
//

import Foundation


@available(OSX 10.15, *)
class _Entity: DocsGeneratable {

    enum _EntityType: String {
        case object = "type"
        case input = "input"
        case `enum` = "enum"
        case scalar = "scalar"
        case schema = "schema"
        case interface = "interface"
    }

    var name: String = ""
    var fields: [_Field] = []
    var interfaces: [String] = []
    var entityType: _EntityType = .object
    var documentation: [String] = []
    var originalLines: [String] = []
}
