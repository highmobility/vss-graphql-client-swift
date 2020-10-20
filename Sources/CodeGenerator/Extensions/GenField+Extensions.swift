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


    private func createVarPub(for field: GenField) -> AnyPublisher<String, Never> {
        let fieldType = field.type.convertedToValidTypeName
        let propertyName = field.name.convertedToValidPropertyName

        return Just("public var \(propertyName): \(fieldType) = nil")
            .eraseToAnyPublisher()
    }


    var scalarsDictPub: AnyPublisher<String, Never> {
        publisher
            .filter { !$0.isType }
            .map {
                "\"\($0.name.convertedToValidPropertyName)\" : \($0.type.convertedToValidTypeName).self".indented(byLevel: 2)
            }
            .prepend("[".indented(byLevel: 1))
            .prepend("static var scalars: [String : Any] {")
            .append("]".indented(byLevel: 1))
            .append("}")
            .eraseToAnyPublisher()
    }
}


//    static var scalars: [String : Any] {
//        [
//            "speed" : Float?.self,
//            "travelledDistance" : Float?.self,
//            "tripMeterReading" : Float?.self
//        ]
//    }
//
//    static var objects: [String : Any] {
//        [
//            "vehicleIdentification" : VehicleIdentification?.self
//        ]
//    }
