//
//  StringArray+Extensions.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Foundation


extension Array where Element == String {

    func joinedWithNewLine(indentationLevel level: Int = 0, firstLineIntented: Bool = false) -> String {
        enumerated().map {
            $0.offset == 0 ?
                (firstLineIntented ? $0.element.indented(byLevel: level) : $0.element) :
                $0.element.indented(byLevel: level)
        }.joined(separator: "\n")
    }
}
