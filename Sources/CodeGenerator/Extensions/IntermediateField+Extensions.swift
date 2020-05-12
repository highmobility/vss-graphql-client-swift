//
//  IntermediateField+Extensions.swift
//  
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Combine
import Foundation


@available(macOS 10.15, *)
extension Array where Element == IntermediateField {

    var ivarLinesPub: AnyPublisher<String, Never>   {
        publisher
            .share()
            .flatMap { field -> AnyPublisher<(String, String), Never> in
                field.documentationLinesPub
                    .share()
                    .collect()
                    .map {
                        $0.joinedWithNewLine()
                    }
                    .zip(self.createArgumentsLinesPub(for: field))
                    .eraseToAnyPublisher()
            }
            .map { docLines, ivarArgLines in
                docLines.isEmpty ?
                    ivarArgLines :
                    docLines + "\n" + ivarArgLines
            }
            .map {
                "\n" + $0.indented(byLevel: 1)
            }
            .eraseToAnyPublisher()
    }
}

@available(OSX 10.15, *)
private extension Array where Element == IntermediateField {

    func createArgumentsLinesPub(for field: IntermediateField) -> AnyPublisher<String, Never> {
        let argumentName = field.argumentsTypeName
        let fieldType = field.type.convertedToValidTypeName
        let propertyName = field.name.convertedToValidPropertyName

        // Handle arguments lines
        var argumentsPub = [String]().publisher.eraseToAnyPublisher()

        if !field.arguments.isEmpty {
            let argVars = field.arguments
                .publisher
                .map {
                    "var \($0.name.convertedToValidPropertyName) = Argument<\($0.type)>(\"\($0.name)\")"
                }
                .map {
                    $0.indented(byLevel: 1)
                }

            argumentsPub = argumentsPub
                .append("\n")
                .append("final class \(argumentName): ArgumentList {")
                .append(argVars)
                .append("}")
                .collect()
                .map {
                    $0.joinedWithNewLine()
                }
                .eraseToAnyPublisher()
        }

        // Output ivar-lines
        return [String]().publisher
            .append("var \(propertyName) = Field<\(fieldType), \(argumentName)>(\"\(field.name)\")")
            .append(argumentsPub)
            .collect()
            .map {
                $0.joinedWithNewLine()
            }
            .eraseToAnyPublisher()
    }
}
