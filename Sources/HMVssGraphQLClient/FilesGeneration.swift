//
//  FilesGeneration.swift
//
//
//  Created by Mikk Rätsep on 04.05.20.
//

import Artemis
import Combine
import Foundation


@available(OSX 10.15, *)
public class FilesGenerator {

    @Published private var entities: [_Entity] = []
    @Published private var filesContent: [String] = []

    private var cancellables: [AnyCancellable] = []


    public init(graphQLSpecFileURL specFile: URL, outputFolderURL outputFolder: URL) throws {
        let content = try String(contentsOf: specFile, encoding: .utf8)
        let lines = content.split(separator: "\n")
        let linesGroupedByEntity: [[String]] = getLinesGroupedByEntity(in: lines)

        let entitiesPub = try _createEntities(fromGroupedLines: linesGroupedByEntity)
        let contentsPub = createFilesContent(from: entitiesPub)
        let writesPub = try createSwiftFiles(from: contentsPub, entitiesPub: entitiesPub, outputFolder: outputFolder)

        writesPub.sink(receiveCompletion: {
            print("* completion:", $0)
            exit(EXIT_SUCCESS)

        }, receiveValue: { success, typeName in
            print("* val:", (success, typeName))

            if !success {
                fatalError("Failed to save \(typeName).swift to \(outputFolder.path)")
            }
        })
        .store(in: &cancellables)
    }
}

@available(OSX 10.15, *)
private extension FilesGenerator {

    func _createEntities(fromGroupedLines groupedLines: [[String]]) throws -> AnyPublisher<_Entity, Never> {
        try createEntities(fromGroupedLines: groupedLines)
            .publisher
            .eraseToAnyPublisher()
    }

    func createFilesContent(from entitiesPub: AnyPublisher<_Entity, Never>) -> AnyPublisher<String, Never> {
        entitiesPub
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

    func createSwiftFiles(from contentsPub: AnyPublisher<String, Never>,
                          entitiesPub: AnyPublisher<_Entity, Never>,
                          outputFolder: URL) throws -> AnyPublisher<(Bool, String), Never> {

        let typeNamesPub = entitiesPub.map { $0.name.convertedToValidTypeName }.eraseToAnyPublisher()
        let urlsPub = typeNamesPub.map { outputFolder.appendingPathComponent($0).appendingPathExtension("swift") }.eraseToAnyPublisher()

        // Clean the output folder
        if FileManager.default.fileExists(atPath: outputFolder.path) {
            try FileManager.default.removeItem(at: outputFolder)
        }

        try FileManager.default.createDirectory(at: outputFolder, withIntermediateDirectories: true)

        // Add a header and save the file
        return contentsPub
            .zip(typeNamesPub) { content, typeName -> String in
                """
                //
                //  \(typeName).swift
                //  HMVssGraphQLClient
                //
                //  Generated by HMVssGraphQLClient on 16.02.20.
                //  Copyright © 2020 High Mobility GmbH. All rights reserved.
                //

                \(content)
                """
            }
            .map {
                Data($0.utf8)
            }
            .zip(urlsPub)
            .tryMap { data, url in
                try data.write(to: url)

                return true
            }
            .replaceError(with: false)
            .zip(typeNamesPub)
            .eraseToAnyPublisher()
    }


    // MARK: SwiftLinesGenerator

    func createSwiftLinesPub(forEnum entity: _Entity) -> AnyPublisher<[String], Never> {
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

    func createSwiftLinesPub(forInput entity: _Entity) -> AnyPublisher<[String], Never> {
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

                let ivarLine = "var \(self.getValidPropertyName(forName: field.name)): \(fieldType)"

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

    func createSwiftLinesPub(forInterface entity: _Entity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .interface else {
            fatalError()
        }

        let ivarLines = entity.fields
            .publisher
            .share()
            .flatMap { field -> AnyPublisher<(String, String), Never> in
                let fieldType = field.type.convertedToValidTypeName
                let propertyName = self.getValidPropertyName(forName: field.name)
                let argTypeName = field.arguments.isEmpty ? "NoArguments" : (field.name + "Arguments").convertedToValidTypeName
                var ivarArgLines = ["var \(propertyName) = Field<\(fieldType), \(argTypeName)>(\"\(field.name)\")"]

                if field.arguments.count > 0 {
                    ivarArgLines += self.createArgumentsStruct(forField: field, name: argTypeName)
                }

                return field.documentationLinesPub
                    .share()
                    .collect()
                    .map {
                        $0.joinedWithNewLine()
                }
                .zip(ivarArgLines
                .publisher
                .collect()
                .map {
                    $0.joinedWithNewLine()
                    }
                )
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

        return entity.documentationLinesPub
            .share()
            .append("public class \(entity.name.convertedToValidTypeName): Interface {")
            .append(ivarLines)
            .append(.publicRequiredInit)
            .collect()
            .eraseToAnyPublisher()
    }

    func createSwiftLinesPub(forObject entity: _Entity) -> AnyPublisher<[String], Never> {
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

        let ivarLines = entity.fields
            .publisher
            .share()
            .flatMap { field -> AnyPublisher<(String, String), Never> in
                let fieldType = field.type.convertedToValidTypeName
                let propertyName = self.getValidPropertyName(forName: field.name)
                let argTypeName = field.arguments.isEmpty ? "NoArguments" : (field.name + "Arguments").convertedToValidTypeName
                var ivarArgLines = ["var \(propertyName) = Field<\(fieldType), \(argTypeName)>(\"\(field.name)\")"]

                if field.arguments.count > 0 {
                    ivarArgLines += self.createArgumentsStruct(forField: field, name: argTypeName)
                }

                return field.documentationLinesPub
                    .share()
                    .collect()
                    .map {
                        $0.joinedWithNewLine()
                    }
                    .zip(ivarArgLines
                        .publisher
                        .collect()
                        .map {
                            $0.joinedWithNewLine()
                        }
                    )
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

        return entity.documentationLinesPub
            .share()
            .append("public class \(name): Object, ObjectSchema {")
            .append(interfaceLines)
            .append(ivarLines)
            .append(.publicRequiredInit)
            .collect()
            .eraseToAnyPublisher()
    }

    func createSwiftLinesPub(forScalar entity: _Entity) -> AnyPublisher<[String], Never> {
        guard entity.entityType == .scalar else {
            fatalError()
        }

        return entity.documentationLinesPub
            .share()
            .append("public typealias \(entity.name.convertedToValidTypeName) = String")    // TODO: wtf, every scalar is a string?!
            .collect()
            .eraseToAnyPublisher()
    }
}
