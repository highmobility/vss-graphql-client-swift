//
//  ReductionResult.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 13.05.20.
//

import Foundation


@available(OSX 10.15, *)
class ReductionResult {

    let entity = GenEntity()
    var isBuildingDocs = false

    private var tempField: String?
    private var tempFieldArgs: [String] = []
    private var tempFieldDocs: [String] = []


    func update(withDocsLine line: String) {
        let docLine = line.deletingOccurrences(of: quoteMarks(3))

        // Reset the flag if the line endds with """
        if line.hasSuffix(quoteMarks(3)) && line.count > 3 {
            isBuildingDocs = false
        }

        // Ignore if doc line is empty
        guard !docLine.isEmpty else {
            return
        }

        // If entity's name is empty, assume we're building it's docs and haven't reached inside the type's definition yet
        if entity.name.isEmpty {
            entity.documentation.append(docLine)
        }
        // Otherwise we're inside the type and are seeing field-docs
        else {
            tempFieldDocs.append(docLine)
        }
    }

    func update(withEntityLine line: String) throws {
        guard !line.hasPrefix("{") else {
            throw "Error: schema is invalid - opening curly braces must be on the same line for type"
        }

        // TODO: Rewrite the .getTypeName...
        let (type, name, interfaces) = try getTypeNameAndInterfacesForEntity(line: line)

        entity.entityType = type
        entity.name = name
        entity.interfaces = interfaces
    }

    func update(withFieldLine line: String) {
        /// If the line contains a left bracket, it's the the first line of a field, so create a new 'field being built'.
        /// However, make sure to keep going to the next if...
        if line.contains("(") {
            tempField = line
        }

        /// If the line (also) contains a right bracket, it's the last line of a field - add up all the arguments that
        /// were built, append this final line, and add a new field to the entity.
        if line.contains(")") {
            if !line.contains("(") {
                tempField?.append(tempFieldArgs.joined(separator: ","))
                tempField?.append(line)
            }

            appendFieldToEntity(from: tempField!)
        }
        /// Otherwise, if the line didn't contain a right or left bracket, it's either an argument for a multi-line
        /// field, or it's a single-line field with no arguments.
        else if !line.contains("(") {
            /// If we're not already building a field, it's a single-line, arugment-less field. Just build it and add it.
            if tempField == nil {
                appendFieldToEntity(from: line)
            }
            else {
                /// Otherwise, it's an argument to a field build built - add it to the array of fields.
                tempFieldArgs.append(line.trimmedWhitespaces)
            }
        }
    }
}

@available(OSX 10.15, *)
private extension ReductionResult {

    func appendFieldToEntity(from line: String) {
        let field = createField(line: line)

        field.documentation = tempFieldDocs

        tempField = nil
        tempFieldArgs = []
        tempFieldDocs = []

        entity.fields.append(field)
    }

    func extractSwiftType(from typeName: String) -> String {
        let isRequired = typeName.hasPrefix("!")
        var typeName = typeName

        // Remove the "!"-sign
        if isRequired {
            typeName.removeLast()
        }

        // Handle the array-case
        if typeName.contains("]") {
            typeName = "[" + extractSwiftType(from: typeName.trimmedBrackets) + "]"
        }

        // Add the optional sign if required
        if !isRequired {
            typeName += "?"
        }

        return typeName
            .replacingOccurrences(of: "Boolean", with: "Bool")
    }

    func getTypeNameAndInterfacesForEntity(line: String) throws -> (type: GenEntityType, name: String, interfaces: [String]) {
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
        name = lineSplitByImplements[0].deletingOccurrences(of: entityType.rawValue, " ", "{")
        type = entityType

        guard !name.isEmpty || type == .schema else {
            fatalError("Failed to find the 'name' of the type from line: \(line)")
        }

        // Next, get the implemented interfaces. We can do this by just removing whitespace/the opening curly brace on the
        // second item in the split line and splitting them by commas.
        if lineSplitByImplements.count == 2 {
            interfaces = lineSplitByImplements[1]
                .deletingOccurrences(of: " ", "{")
                .split(separator: ",")
                .map { String($0) }
        }

        return (type, name, interfaces)
    }

    func createField(line: String) -> GenField {
        let field = GenField()
        var lineWithArgsRemoved: String = line

        // Build the array of arguments. We do so by getting the regex for an opening and closing paranthesis, then removing
        // whitespace and the parantheses. Then we split that string by commas to get the key-value 'arg' pairs, which can
        // be split by their colon to get the name and type of the argument.
        if let argsRange = line.range(of: #"\((.*?)\)"#, options: .regularExpression) {
            lineWithArgsRemoved.removeSubrange(argsRange)

            field.arguments += String(line[argsRange])
                .deletingOccurrences(of: " ", "(", ")")
                .split(separator: ",")
                .map { arg -> [String] in
                    let values = arg
                        .split(separator: ":")
                        .map { String($0) }

                    guard arg.contains(":"), values.count == 2 else {
                        fatalError("Argument line from line '\(line)' was invalid")
                    }

                    return values
                }
                .map {
                    ($0[0], self.extractSwiftType(from: $0[1]))
                }
                .map {
                    GenArgument(name: $0.0, type: $0.1)
                }
        }

        // Once we have the line with the arguments portion removed, we can simply perform the same 'remove whitespace/split
        // by colon' algorithm to get the name and type of the field.
        let nameAndType = lineWithArgsRemoved
            .deletingOccurrences(of: " ")
            .split(separator: ":")
            .map { String($0) }

        field.name = nameAndType[0]

        if nameAndType.count > 1 {
            field.type = extractSwiftType(from: nameAndType[1])
            field.isType = nameAndType[1].hasPrefix("Vehicle_")
        }

        return field
    }
}
