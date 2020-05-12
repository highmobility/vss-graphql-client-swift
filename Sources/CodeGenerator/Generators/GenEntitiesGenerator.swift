//
//  GenEntitiesGenerator.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Combine
import Foundation


private var quoteMarks = {
    String(repeating: "\"", count: $0)
}


@available(macOS 10.15, *)
struct GenEntitiesGenerator {

    static func publisher(fromSpecFileContent content: String) throws -> AnyPublisher<GenEntity, Never> {
        print("- creating intermediate entities...")

        return content.split(separator: "\n")
            .publisher
            .collect()
            .map { lines -> [[String]] in
                // Now, group the lines into the 'entity' (e.g. type, enum, input, etc) that they're associated with. Each 'entity'
                // at this point is an array of associated lines.
                var linesGroupedByEntity: [[String]] = []
                var entityLinesBeingAddedTo: [String]?
                var isBuildingDocumentation = false

                for line in lines {
                    let line = String(line)

                    // Ignore comment lines (and don't treat them as documentation, either)
                    if line.trimmedWhitespaces.hasPrefix("#") {
                        continue
                    }

                    // if the line contains """ and it's not a single-line comment (e.g. """Documentation"""), flag that we're building
                    // documentation.
                    if line.contains(quoteMarks(3)) &&
                        !(line.trimmedWhitespaces.hasSuffix(quoteMarks(3)) &&
                            line.count > 3) {
                        isBuildingDocumentation.toggle()
                    }

                    if line.trimmedWhitespaces.hasPrefix("scalar") {
                        linesGroupedByEntity.append([String(line)])
                    }
                    // Once we encounter an opening curly brace, create a new 'temp entity' (i.e. string array)
                    else if ((line.contains("{") && !isBuildingDocumentation) || line.hasPrefix(quoteMarks(3))) && entityLinesBeingAddedTo == nil {
                        entityLinesBeingAddedTo = [String(line)]
                    }
                    // When we encounter the closing curly brace for an entity, add that line, add the 'temp entity' to the full
                    // 'lines grouped by entity', and clear the 'temp entity' so whitespace between entities are removed
                    else if line.trimmedWhitespaces == "}" && !isBuildingDocumentation {
                        entityLinesBeingAddedTo?.append(String(line))
                        linesGroupedByEntity.append(entityLinesBeingAddedTo!)

                        entityLinesBeingAddedTo = nil
                    }
                    // Otherwise, add lines to the 'temp entity', if it exists.
                    else {
                        entityLinesBeingAddedTo?.append(String(line))
                    }
                }

                return linesGroupedByEntity
            }
            .flatMap { groupedLines in
                groupedLines.publisher
            }
            .tryCompactMap { lines -> GenEntity? in
                try Self.createIntermediateEntity(from: lines)
            }
            .assertNoFailure()
            .eraseToAnyPublisher()
    }


    private init() { }
}


// TODO: Rewrite this to Combine
@available(OSX 10.15, *)
private extension GenEntitiesGenerator {

    static func createIntermediateEntity(from lines: [String]) throws -> GenEntity? {
        // Each array of strings is a group of lines associated with an entity - map them into full 'entity' objects.
        let entity = GenEntity()

        entity.originalLines = lines

        var fieldDocumentation: [String] = []
        var isBuildingDocumentation = false
        var fieldBeingBuilt: String?
        var fieldArgumentsBeingBuilt: [String] = []
        for line in lines {
            let line = String(line)

            if line.trimmedWhitespaces.hasPrefix(quoteMarks(3)) {
                isBuildingDocumentation.toggle()
            }

            if isBuildingDocumentation {
                let docLine = line.replacingOccurrences(of: quoteMarks(3), with: "").trimmingCharacters(in: .whitespaces)
                // Assume the comment is for the entity if its 'name' is empty (i.e. we haven't hit the declaration line yet)
                if entity.name == "" && !docLine.isEmpty {
                    entity.documentation.append(docLine)
                }
                    // Otherwise, store the field documentation in the temp 'field documentation' variable for use when the
                    // field object is actually made
                else if !docLine.isEmpty {
                    fieldDocumentation.append(docLine)
                }
                // reset the 'is building docs' flag if the """ is at the end of a doc line.
                if line.trimmedWhitespaces.count > 3 &&
                    line.trimmedWhitespaces.hasSuffix(quoteMarks(3)) {
                    isBuildingDocumentation = false
                }
            }
                // If it's the declaration line, we can get the entity type, name, and implemented interfaces of the entity
            else if line.contains("{") || line.trimmedWhitespaces.hasPrefix("scalar") {
                guard !line.hasPrefix("{") else {
                    throw "Invalid schema - opening curly braces for types must be on the same line"
                }
                let (type, name, interfaces) = try getTypeNameAndInterfacesForEntity(line: line)
                entity.entityType = type
                entity.name = name
                entity.interfaces = interfaces
            }
                // Otherwise, we're building a field.
            else if !line.contains("}") && !line.replacingOccurrences(of: quoteMarks(3), with: "").trimmedWhitespaces.isEmpty {
                /// If the line contains a left bracket, it's the the first line of a field, so create a new 'field being built'.
                /// However, make sure to keep going to the next if...
                if line.contains("(") {
                    fieldBeingBuilt = line
                }

                /// If the line (also) contains a right bracket, it's the last line of a field - add up all the arguments that
                /// were built, append this final line, and add a new field to the entity.
                if line.contains(")") {
                    if !line.contains("(") {
                        fieldBeingBuilt?.append(fieldArgumentsBeingBuilt.joined(separator: ","))
                        fieldBeingBuilt?.append(line)
                    }
                    let field = try createField(line: fieldBeingBuilt!)
                    field.documentation = fieldDocumentation
                    fieldDocumentation = []
                    fieldArgumentsBeingBuilt = []
                    entity.fields.append(field)
                    fieldBeingBuilt = nil
                }
                    /// Otherwise, if the line didn't contain a right or left bracket, it's either an argument for a multi-line
                    /// field, or it's a single-line field with no arguments.
                else if !line.contains("(") {
                    /// If we're not already building a field, it's a single-line, arugment-less field. Just build it and add it.
                    if fieldBeingBuilt == nil {
                        let field = try createField(line: line)
                        field.documentation = fieldDocumentation
                        fieldDocumentation = []
                        fieldArgumentsBeingBuilt = []
                        entity.fields.append(field)
                        fieldBeingBuilt = nil
                    } else {
                        /// Otherwise, it's an argument to a field build built - add it to the array of fields.
                        fieldArgumentsBeingBuilt.append(line.trimmedWhitespaces)
                    }
                }
            }
        }

        return entity.entityType == .schema ? nil : entity
    }

    static func getTypeNameAndInterfacesForEntity(line: String) throws -> (type: GenEntityType, name: String, interfaces: [String]) {
        var type: GenEntityType = .object
        var name: String = ""
        var interfaces: [String] = []

        // Split the given line by the 'implements' keyword (will remove the keyword)
        let lineSplitByImplements = line.components(separatedBy: "implements")
        let line = line.trimmedWhitespaces

        // Check the prefix of the 'nameComponent' of the line to determine the type of the entity.
        guard let entityType =  GenEntityType.allCases.first(where: { line.hasPrefix($0.rawValue) }) else {
            fatalError("Failed to find 'entity type' from line: \(line)")
        }

        // When the type is determined, remove the entity type from the 'nameComponent'.
        // Additionally, remove any whitespace in the 'nameComponent' to get the name of the entity.
        name = lineSplitByImplements[0].replacingOccurrences(of: [entityType.rawValue, " ", "{"])
        type = entityType

        guard !name.isEmpty || type == .schema else {
            fatalError("Failed to find the 'name' of the type from line: \(line)")
        }

        // Next, get the implemented interfaces. We can do this by just removing whitespace/the opening curly brace on the
        // second item in the split line and splitting them by commas.
        if lineSplitByImplements.count == 2 {
            interfaces = lineSplitByImplements[1].replacingOccurrences(of: [" ", "{"]).split(separator: ",").map { String($0) }
        }

        return (type, name, interfaces)
    }

    static func createField(line: String) throws -> GenField {
        let field = GenField()
        var lineWithArgsRemoved: String = line

        // Build the array of arguments. We do so by getting the regex for an opening and closing paranthesis, then removing
        // whitespace and the parantheses. Then we split that string by commas to get the key-value 'arg' pairs, which can
        // be split by their colon to get the name and type of the argument.
        if let argsRange = line.range(of: #"\((.*?)\)"#, options: .regularExpression) {
            lineWithArgsRemoved.removeSubrange(argsRange)

            let args = String(line[argsRange])
                .replacingOccurrences(of: " ", with: "")
                .replacingOccurrences(of: "(", with: "")
                .replacingOccurrences(of: ")", with: "")
                .split(separator: ",").map { String($0) }
            for arg in args {
                let nameAndType = arg.split(separator: ":").map { String($0) }
                guard arg.contains(":"), nameAndType.count == 2 else {
                    throw "Argument line from line '\(line)' was invalid"
                }
                let name = nameAndType[0]
                let type = getSwiftType(forType: nameAndType[1])
                field.arguments.append(GenArgument(name: name, type: type))
            }
        }

        // Once we have the line with the arguments portion removed, we can simply perform the same 'remove whitespace/split
        // by colon' algorithm to get the name and type of the field.
        let nameAndType = lineWithArgsRemoved
            .replacingOccurrences(of: " ", with: "")
            .split(separator: ":").map { String($0) }

        field.name = nameAndType[0]

        if nameAndType.count > 1 {
            field.type = getSwiftType(forType: nameAndType[1])
            field.isType = nameAndType[1].hasPrefix("Vehicle_")
        }

        return field
    }

    static func getSwiftType(forType type: String) -> String {
        if type.contains("]") {
            var arrayElementType = type
            if type.hasSuffix("!") {
                arrayElementType.removeLast()
                arrayElementType = arrayElementType.trimmingCharacters(in: CharacterSet(charactersIn: "[]"))
                arrayElementType = "[\(getSwiftType(forType: arrayElementType))]"
            } else {
                arrayElementType = arrayElementType.trimmingCharacters(in: CharacterSet(charactersIn: "[]"))
                arrayElementType = "[\(getSwiftType(forType: arrayElementType))]?"
            }
            return arrayElementType
        }

        let optionalsAccountedType: String
        if type.contains("!") {
            optionalsAccountedType = type.replacingOccurrences(of: "!", with: "")
        } else {
            optionalsAccountedType = type.appending("?")
        }
        return optionalsAccountedType
            .replacingOccurrences(of: "Boolean", with: "Bool")
    }
}


// TODO: Remove
extension String: Error {

}
