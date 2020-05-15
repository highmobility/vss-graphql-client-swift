//
//  GenEntitiesGenerator.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Combine
import Foundation


var quoteMarks = {
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
            .flatMap { lines in
                createGenEntities(from: lines)
            }
            .assertNoFailure()
            .eraseToAnyPublisher()
    }


    private init() { }
}


@available(OSX 10.15, *)
var cancellables: [AnyCancellable] = []


// TODO: Rewrite this in Combine
@available(OSX 10.15, *)
private extension GenEntitiesGenerator {

    static func createGenEntities(from lines: [String]) -> AnyPublisher<GenEntity, Never> {
        return lines
            .publisher
            .map {
                $0.trimmedWhitespaces
            }
            .tryReduce(ReductionResult()) { result, line in
                // Check for docs start
                if line.hasPrefix(quoteMarks(3)) {
                    result.isBuildingDocs.toggle()
                }

                // Build the docs
                if result.isBuildingDocs {
                    result.update(withDocsLine: line)
                }
                // Or build the entities
                else if line.contains("{") || line.trimmedWhitespaces.hasPrefix("scalar") {
                    try result.update(withEntityLine: line)
                }
                // Or build the fields
                else if !line.contains("}") && !line.deletingOccurrences(of: quoteMarks(3)).trimmedWhitespaces.isEmpty {
                    result.update(withFieldLine: line)
                }

                return result
            }
            .map {
                $0.entity
            }
            .assertNoFailure()
            .eraseToAnyPublisher()
    }
}


// TODO: Remove
extension String: Error {

}
