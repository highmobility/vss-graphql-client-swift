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
}

@available(OSX 10.15, *)
private extension Array where Element == GenField {

    func createVarPub(for field: GenField) -> AnyPublisher<String, Never> {
        let fieldType = field.type.convertedToValidTypeName
        let propertyName = field.name.convertedToValidPropertyName

        return Just("public var \(propertyName): \(fieldType) = nil")
            .eraseToAnyPublisher()
    }
}
