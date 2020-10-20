//
//  FilesContentGenerator.swift
//  CodeGenerator
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
                case .enum:     return self.createSwiftLinesPub(forEnum: entity)
                case .object:   return self.createSwiftLinesPub(forObject: entity)
                case .scalar:   return self.createSwiftLinesPub(forScalar: entity)

                default:
                    fatalError("EntityType '\(entity.entityType)' is not yet supported.")
                }
            }
            .map { $0.joinedWithNewLine() }
            .map { content -> String in
                """
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
                    .map { $0.joinedWithNewLine() }
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
            .append("public enum \(entity.name.convertedToValidTypeName): String, GraphQLEnumType {")
            .append(caseLines)
            .append("}")
            .collect()
            .eraseToAnyPublisher()
    }

    static func createSwiftLinesPub(forObject entity: GenEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .object else {
            fatalError()
        }

        return entity.documentationLinesPub
            .append("public struct \(entity.name.convertedToValidTypeName): GraphQLObjectType {")
            .append(entity.fields.ivarLinesPub)
//            .append(entity.fields.scalarsDictPub)
            .append("}")
            .collect()
            .eraseToAnyPublisher()
    }

    static func createSwiftLinesPub(forScalar entity: GenEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .scalar else {
            fatalError()
        }

        // Added scalars need de-/serialization information supplied in advance
        return entity.documentationLinesPub
            .append("public typealias \(entity.name.convertedToValidTypeName) = String")
            .collect()
            .eraseToAnyPublisher()
    }
}
