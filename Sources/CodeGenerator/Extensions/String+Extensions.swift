//
//  String+Extensions.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Foundation


extension String {

    static var publicRequiredInit: String {
        """

            public required init() { }
        }
        """
    }


    var trimmedWhitespaces: String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }


    /**
    Converts any String, or in this intented case, an Object Type string to a specific case style.
     This methods splits a string into a string array based on capital letters.

    - parameter option: The preferred case style.
    */
    func convert(with option: CaseType) -> String {
        switch option {
        case .lowercase:
            return lowercased()

        case .uppercase:
            return uppercased()

        case .capitalized:
            return capitalized

        case .camelCase,
             .pascalCase,
             .snakeCase,
             .kebabCase:
            guard var words = capitalizedWords else {
                return ""
            }

            switch  option {
            case .camelCase:
                return words.removeFirst().lowercased() +
                    words.joined(separator: "")

            case .pascalCase:
                return words.map { $0.capitalized }.joined(separator: "")

            case .snakeCase:
                return words.map { $0.lowercased() }.joined(separator: "_")

            case .kebabCase:
                return words.map { $0.lowercased() }.joined(separator: "-")

            default:
                fatalError()
            }
        }
    }

    func indented(byLevel level: Int) -> String {
        let kIndent = String(repeating: " ", count: 4)
        let indentation = String(repeating: kIndent, count: level)

        return indentation + replacingOccurrences(of: "\n", with: "\n" + indentation)
    }

    func replacingOccurrences<T>(of targets: [T],
                                 with replacement: String = "",
                                 options: CompareOptions = [],
                                 range searchRange: Range<Index>? = nil) -> String where T: StringProtocol {

        targets.reduce(self) {
            if $0 == "_" &&
                $0.count > 1
                && $0[$0.startIndex] == "_"
                && $0[$0.index(after: $0.startIndex)].isNumber {
                    return $0
            }

            return $0.replacingOccurrences(of: $1, with: replacement, options: options, range: searchRange)
        }
    }
}


private extension String {

    /// A string array of words that were capitalized in a string
    var capitalizedWords: [String]? {
        guard !self.isEmpty else {
            return nil
        }

        let indexes = Set(self
            .enumerated()
            .filter { $0.element.isUppercase }
            .map { $0.offset })

        let words = map { String($0) }
            .enumerated()
            .reduce([String]()) { words, next -> [String] in
                guard !words.isEmpty else {
                    return [next.element]
                }

                guard !indexes.contains(next.offset) else {
                    return words + [String(next.element)]
                }

                var words = words

                words[words.count - 1] += String(next.element)

                return words
            }

        return words
    }
}
