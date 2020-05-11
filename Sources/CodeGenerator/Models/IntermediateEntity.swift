//
//  IntermediateEntity.swift
//  
//
//  Created by Mikk Rätsep on 05.05.20.
//

import Foundation


@available(OSX 10.15, *)
class IntermediateEntity: DocsGeneratable {

    var name: String = ""
    var fields: [IntermediateField] = []
    var interfaces: [String] = []
    var entityType: IntermediateEntityType = .object
    var documentation: [String] = []
    var originalLines: [String] = []
}
