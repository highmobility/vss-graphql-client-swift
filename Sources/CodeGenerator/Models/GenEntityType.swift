//
//  GenEntityType.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Foundation


enum GenEntityType: String, CaseIterable {
    
    case object = "type"
    case input = "input"
    case `enum` = "enum"
    case scalar = "scalar"
    case schema = "schema"
    case interface = "interface"
}
