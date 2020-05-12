//
//  FilesContentGenerator.swift
//  
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Combine
import Foundation


@available(macOS 10.15, *)
struct FilesContentGenerator {

    static func publisher(from entitiesPub: AnyPublisher<GenEntity, Never>) -> AnyPublisher<String, Never> {
        print("- creating files content...")

        return entitiesPub
            .flatMap { entity -> AnyPublisher<[String], Never> in
                switch entity.entityType {
                case .enum:         return self.createSwiftLinesPub(forEnum: entity)
                case .input:        return self.createSwiftLinesPub(forInput: entity)
                case .interface:    return self.createSwiftLinesPub(forInterface: entity)
                case .object:       return self.createSwiftLinesPub(forObject: entity)
                case .scalar:       return self.createSwiftLinesPub(forScalar: entity)
                case .schema:       fatalError()
                }
            }
            .map {
                $0.joinedWithNewLine()
            }
            .map { content -> String in
                """
                import Artemis
                import Foundation


                \(content)
                """
            }
            .eraseToAnyPublisher()
    }


    private init() { }
}

@available(macOS 10.15, *)
private extension FilesContentGenerator {

    static func createSwiftLinesPub(forEnum entity: GenEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .enum else {
            fatalError()
        }

        let caseLines = entity.fields
            .publisher
            .flatMap { field -> AnyPublisher<(String, String), Never> in
                let caseLine = "case \(field.name.convertedToGoodCaseName) = \"\(field.name)\""

                return field.documentationLinesPub
                    .collect()
                    .map {
                        $0.joinedWithNewLine()
                    }
                    .zip(Just(caseLine))
                    .eraseToAnyPublisher()
            }
            .map { docsLines, caseLine in
                docsLines.isEmpty ?
                    caseLine :
                    docsLines + "\n" + caseLine
            }
            .map {
                "\n" + $0.indented(byLevel: 1)
            }

        return entity.documentationLinesPub
            .append("public enum \(entity.name.convertedToValidTypeName): String, Enum {")
            .append(caseLines)
            .append("}")
            .collect()
            .eraseToAnyPublisher()
    }

    static func createSwiftLinesPub(forInput entity: GenEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .input else {
            fatalError()
        }

        let ivarLines = entity.fields
            .publisher
            .flatMap { field -> AnyPublisher<(String, String), Never> in
                var fieldType = field.type.convertedToValidTypeName

                if fieldType.last != "?" {
                    fieldType += "!"
                }

                let ivarLine = "public var \(field.name.convertedToValidPropertyName): \(fieldType)"

                return field.documentationLinesPub
                    .collect()
                    .map {
                        $0.joinedWithNewLine()
                    }
                    .zip(Just(ivarLine))
                    .eraseToAnyPublisher()
            }
            .map { docsLines, ivarLine in
                docsLines.isEmpty ?
                    ivarLine :
                    docsLines + "\n" + ivarLine
            }
            .map {
                "\n" + $0.indented(byLevel: 1)
            }

        return entity.documentationLinesPub
            .append("public class \(entity.name.convertedToValidTypeName): Input, ObjectSchema {")
            .append(ivarLines)
            .append(.publicRequiredInit)
            .collect()
            .eraseToAnyPublisher()
    }

    static func createSwiftLinesPub(forInterface entity: GenEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .interface else {
            fatalError()
        }

        return entity.documentationLinesPub
            .append("public class \(entity.name.convertedToValidTypeName): Interface {")
            .append(entity.fields.ivarLinesPub)
            .append(.publicRequiredInit)
            .collect()
            .eraseToAnyPublisher()
    }

    static func createSwiftLinesPub(forObject entity: GenEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .object else {
            fatalError()
        }

        let name = entity.name.convertedToValidTypeName

        let interfaceLines = entity.interfaces
            .publisher
            .collect()
            .compactMap { interfaces -> String? in
                interfaces.isEmpty ? nil : interfaces.joined(separator: ", ")
            }
            .map { interfaces in
                "\n" + "public static let implements = Interfaces(\(interfaces))".indented(byLevel: 1)
            }

        return entity.documentationLinesPub
            .append("public class \(name): Object, ObjectSchema {")
            .append(interfaceLines)
            .append(entity.fields.ivarLinesPub)
            .append(.publicRequiredInit)
            .collect()
            .eraseToAnyPublisher()
    }

    static func createSwiftLinesPub(forScalar entity: GenEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .scalar else {
            fatalError()
        }

        return entity.documentationLinesPub
            .append("public typealias \(entity.name.convertedToValidTypeName) = String")    // TODO: umm, every scalar is a string?
            .collect()
            .eraseToAnyPublisher()
    }
}
