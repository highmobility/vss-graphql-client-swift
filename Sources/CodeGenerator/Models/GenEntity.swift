//
//  GenEntity.swift
//  
//
//  Created by Mikk Rätsep on 05.05.20.
//

import Foundation


@available(OSX 10.15, *)
class GenEntity: DocsGeneratable {

    var name: String = ""
    var fields: [IntermediateField] = []
    var interfaces: [String] = []
    var entityType: GenEntityType = .object
    var documentation: [String] = []
    var originalLines: [String] = []
}
