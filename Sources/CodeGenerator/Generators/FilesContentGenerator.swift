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

    private var cancellables: [AnyCancellable] = []
    let filesContentPub: AnyPublisher<String, Never>



    init(from entitiesPub: AnyPublisher<IntermediateEntity, Never>) {
        print("- creating files content...")

        let xxxxx = entitiesPub
            .share()
            .flatMap { entity -> AnyPublisher<[String], Never> in
                let tango: AnyPublisher<[String], Never>

                switch entity.entityType {
                case .enum:         tango = Self.createSwiftLinesPub(forEnum: entity)
                case .input:        tango = Self.createSwiftLinesPub(forInput: entity)
                case .interface:    tango = Self.createSwiftLinesPub(forInterface: entity)
                case .object:       tango = Self.createSwiftLinesPub(forObject: entity)
                case .scalar:       tango = Self.createSwiftLinesPub(forScalar: entity)
                case .schema:       fatalError()
                }

//                tango.share().sink { print($0) }.store(in: &cancellables)

                return tango
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

//        xxxxx.sink { val in
////            print("sinked:", val)
//        }
//        .store(in: &cancellables)

        filesContentPub = xxxxx
    }
}

@available(macOS 10.15, *)
private extension FilesContentGenerator {

    static func createSwiftLinesPub(forEnum entity: IntermediateEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .enum else {
            fatalError()
        }

        let caseLines = entity.fields
            .publisher
            .share()
            .flatMap { field -> AnyPublisher<(String, String), Never> in
                let caseLine = "case \(field.name.convertedToGoodCaseName) = \"\(field.name)\""

                return field.documentationLinesPub
                    .share()
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
            .share()
            .append("public enum \(entity.name.convertedToValidTypeName): String, Enum {")
            .append(caseLines)
            .append("}")
            .collect()
            .eraseToAnyPublisher()
    }

    static func createSwiftLinesPub(forInput entity: IntermediateEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .input else {
            fatalError()
        }

        let ivarLines = entity.fields
            .publisher
            .share()
            .flatMap { field -> AnyPublisher<(String, String), Never> in
                var fieldType = field.type.convertedToValidTypeName

                if fieldType.last != "?" {
                    fieldType += "!"
                }

                let ivarLine = "var \(field.name.convertedToValidPropertyName): \(fieldType)"

                return field.documentationLinesPub
                    .share()
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
            .share()
            .append("public class \(entity.name.convertedToValidTypeName): Input, ObjectSchema {")
            .append(ivarLines)
            .append(.publicRequiredInit)
            .collect()
            .eraseToAnyPublisher()
    }

    static func createSwiftLinesPub(forInterface entity: IntermediateEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .interface else {
            fatalError()
        }

        return entity.documentationLinesPub
            .share()
            .append("public class \(entity.name.convertedToValidTypeName): Interface {")
            .append(entity.fields.ivarLinesPub)
            .append(.publicRequiredInit)
            .collect()
            .eraseToAnyPublisher()
    }

    static func createSwiftLinesPub(forObject entity: IntermediateEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .object else {
            fatalError()
        }

        let name = entity.name.convertedToValidTypeName

        let interfaceLines = entity.interfaces
            .publisher
            .share()
            .collect()
            .compactMap { interfaces -> String? in
                interfaces.isEmpty ? nil : interfaces.joined(separator: ", ")
            }
            .map { interfaces in
                "\n" + "static let implements = Interfaces(\(interfaces))".indented(byLevel: 1)
            }

        return entity.documentationLinesPub
            .share()
            .append("public class \(name): Object, ObjectSchema {")
            .append(interfaceLines)
            .append(entity.fields.ivarLinesPub)
            .append(.publicRequiredInit)
            .collect()
            .eraseToAnyPublisher()
    }

    static func createSwiftLinesPub(forScalar entity: IntermediateEntity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .scalar else {
            fatalError()
        }

        return entity.documentationLinesPub
            .share()
            .append("public typealias \(entity.name.convertedToValidTypeName) = String")    // TODO: umm, every scalar is a string?
            .collect()
            .eraseToAnyPublisher()
    }
}
