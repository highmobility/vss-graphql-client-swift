import Foundation


enum CaseStyleOption {
    case lowercase
    case uppercase
    case capitalized
    case camelCase
    case pascalCase
    case snakeCase
    case kebabCase
}


extension String {

    /**
    Converts any String, or in this intented case, an Object Type string to a specific case style.
     This methods splits a string into a string array based on capital letters.

    - parameter option: The preferred case style.
    */
    func convert(with option: CaseStyleOption) -> String {
        switch option {
        case .lowercase:
            return self.lowercased()
        case .uppercase:
            return self.uppercased()
        case .capitalized:
            return self.capitalized
        case .camelCase:
            return self.camelCased()
        case .pascalCase:
            return self.pascalCased()
        case .snakeCase:
            return self.snakeCased()
        case .kebabCase:
            return self.kebabCased()
        }
    }

    func indented(byLevel level: Int) -> String {
        let kIndent = String(repeating: " ", count: 4)
        let indentation = String(repeating: kIndent, count: level)

        return indentation + replacingOccurrences(of: "\n", with: "\n" + indentation)
    }

    func replacingOccurrences<T>(of targets: [T], with replacement: String = "", options: CompareOptions = [], range searchRange: Range<Index>? = nil) -> String where T: StringProtocol {
        targets.reduce(self) {
            $0.replacingOccurrences(of: $1, with: replacement, options: options, range: searchRange)
        }
    }

    var convertedToValidTypeName: String {
        replacingOccurrences(of: ["Vehicle_", "_Enum", "_"])
            .convert(with: .pascalCase)
    }

    var convertedToGoodCaseName: String {
        guard contains("_") else {
            return self
        }

        var otherWords = split(separator: "_")

        guard otherWords.count >= 2 else {
            return trimmingCharacters(in: CharacterSet(charactersIn: "_"))
        }

        return otherWords.removeFirst() +
            otherWords.map {
                $0.first!.uppercased() +
                $0.dropFirst()
            }.joined()
    }

    static var publicRequiredInit: String {
        """

            public required init() { }
        }
        """
    }


    /**
    Wraps fields in curly braces to create a key object pair in a string

    - parameter fields: The fields to be wrapped.
    */
    func withSubfields(_ fields: String) -> String {
        "\(self) { \(fields) }"
    }
}

extension Array where Element == String {

    static var newLineElement: [String] {
        ["\n"]
    }

    
    func joinedWithNewLine(indentationLevel level: Int = 0) -> String {
        enumerated().map {
            $0.offset == 0 ?
                $0.element :
                $0.element.indented(byLevel: level)
        }.joined(separator: "\n")
    }
}

private extension String {
    /// Determines if a character is uppercase.
    var isUppercase: Bool {
        String(self).uppercased() == String(self)
    }

    /// A string array of words that were capitalized in a string
    var capitalizedWords: [String]? {
        guard !self.isEmpty else { return nil }

        let indexes = Set(self
            .enumerated()
            .filter { $0.element.isUppercase }
            .map { $0.offset })

        let words = self
            .map { String($0) }
            .enumerated()
            .reduce([String]()) { words, next -> [String] in
                guard !words.isEmpty else { return [next.element] }
                guard !indexes.contains(next.offset) else { return words + [String(next.element)] }

                var words = words
                words[words.count-1] += String(next.element)
                return words
            }

        return words
    }

    /**
    Camel case string style.
     Ex. camelCase
    */
    func camelCased() -> String {
        guard var words = self.capitalizedWords else { return "" }
        words[0] = words[0].lowercased()
        return words.joined(separator: "")
    }

    /**
    Pascal case string style.
     Ex. PascalCase
    */
    func pascalCased() -> String {
        guard let words = self.capitalizedWords else { return "" }
        return words.map { $0.capitalized }.joined(separator: "")
    }

    /**
    Snake case string style.
     Ex. snake_case
    */
    func snakeCased() -> String {
        guard let words = self.capitalizedWords else { return "" }
        return words.map { $0.lowercased() }.joined(separator: "_")
    }

    /**
    Kebab case string style.
     Ex. kebab-case
    */
    func kebabCased() -> String {
        guard let words = self.capitalizedWords else { return "" }
        return words.map { $0.lowercased() }.joined(separator: "-")
    }
}
