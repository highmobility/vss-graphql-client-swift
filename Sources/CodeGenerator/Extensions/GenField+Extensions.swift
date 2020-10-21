//
//  GenField+Extensions.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Combine
import Foundation


@available(macOS 10.15, *)
extension Array where Element == GenField {

    var ivarLinesPub: AnyPublisher<String, Never>   {
        publisher
            .flatMap { field -> AnyPublisher<(String, String), Never> in
                field.documentationLinesPub
                    .collect()
                    .map { $0.joinedWithNewLine() }
                    .zip(self.createVarPub(for: field))
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

    var scalarsDictPub: AnyPublisher<String, Never> {
        dictPub(isObject: false)
    }

    var objectsDictPub: AnyPublisher<String, Never> {
        dictPub(isObject: true)
    }


    private func createVarPub(for field: GenField) -> AnyPublisher<String, Never> {
        let fieldType = field.type.convertedToValidTypeName
        let propertyName = field.name.convertedToValidPropertyName

        return Just("public var \(propertyName): \(fieldType) = nil")
            .eraseToAnyPublisher()
    }

    private func dictPub(isObject: Bool) -> AnyPublisher<String, Never> {
        let varName = isObject ? "objects" : "scalars"
        let valueType = isObject ? "GraphQLObjectType.Type" : "Any"

        return publisher
            .filter { $0.isType == isObject }
            .map { "\"\($0.name.convertedToValidPropertyName)\" : \($0.type.convertedToValidTypeName.deletingOccurrences(of: "?")).self" }
            .collect()
            .map { $0.joined(separator: ",\n") }
            .map { rows -> String in
                guard !rows.isEmpty else {
                    return "[:]".indented(byLevel: 1)
                }


                return """
                    [
                \(rows.indented(byLevel: 2))
                    ]
                """
            }
            .prepend("\npublic static var \(varName): [String : \(valueType)] {")
            .append("}")
            .map { $0.indented(byLevel: 1) }
            .eraseToAnyPublisher()
    }
}
