//
//  String+Converted.swift
//  
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Foundation


private let kReservedKeywords = ["associatedtype", "class", "deinit", "enum", "extension",
                                 "fileprivate", "func", "import", "init", "inout", "internal", "let", "open",
                                 "operator", "private", "protocol", "public", "static", "struct", "subscript",
                                 "typealias", "var", "break", "case", "continue", "default", "defer", "do",
                                 "else", "fallthrough", "for", "guard", "if", "in", "repeat", "return",
                                 "switch", "where", "while", "as", "Any", "catch", "false", "is", "nil",
                                 "rethrows", "super", "self", "Self", "throw", "throws", "true", "try",
                                 "associativity", "convenience", "dynamic", "didSet", "final", "get", "infix",
                                 "indirect", "lazy", "left", "mutating", "none", "nonmutating", "optional",
                                 "override", "postfix", "precedence", "prefix", "Protocol", "required", "right",
                                 "set", "Type", "unowned", "weak", "willSet"]


extension String {

    var convertedToGoodCaseName: String {
        guard contains("_") else {
            return self
        }

        var otherWords = split(separator: "_")

        guard otherWords.count >= 2 else {
            let trimmedWord = trimmingCharacters(in: CharacterSet(charactersIn: "_"))
            let digits = trimmedWord.prefix { $0.isNumber }

            guard let number = Int(digits) else {
                return trimmedWord
            }

            var numberWords = number.asWord.components(separatedBy: CharacterSet.letters.inverted)

            return numberWords.removeFirst() +
                numberWords.joined(separator: " ").capitalized.replacingOccurrences(of: [" "]) +
                trimmedWord.suffix(trimmedWord.count - digits.count)
        }

        return otherWords.removeFirst() +
            otherWords.joined(separator: " ").capitalized.replacingOccurrences(of: [" "])
    }

    var convertedToValidTypeName: String {
        replacingOccurrences(of: ["Vehicle_", "_Enum", "_"])
            .convert(with: .pascalCase)
    }

    var convertedToValidPropertyName: String {
        guard kReservedKeywords.contains(self) else {
            return self
        }

        return "`\(self)`"
    }
}


private extension Int {

    var asWord: String {
        NumberFormatter(.spellOut).string(from: NSNumber(value: self))!
    }
}


private extension NumberFormatter {

    convenience init(_ numberStyle: NumberFormatter.Style) {
        self.init()
        self.numberStyle = numberStyle
    }
}
