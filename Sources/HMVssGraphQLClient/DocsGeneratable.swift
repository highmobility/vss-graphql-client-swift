//
//  DocsGeneratable.swift
//  
//
//  Created by Mikk Rätsep on 05.05.20.
//

import Combine
import Foundation


@available(OSX 10.15, *)
protocol DocsGeneratable {

    var documentation: [String] { get set }
    var documentationLinesPub: AnyPublisher<String, Never> { get }
}

@available(OSX 10.15, *)
extension DocsGeneratable {

    var documentationLinesPub: AnyPublisher<String, Never> {
        documentation
            .publisher
            .map { docLine in
                "/// \(docLine)"
            }
            .eraseToAnyPublisher()
    }
}

@available(OSX 10.15, *)
extension Array where Element: DocsGeneratable {

    var documentationLinesArraysPub: AnyPublisher<[String], Never> {
        publisher.flatMap { field in
            field.documentationLinesPub
                .collect()
        }
        .eraseToAnyPublisher()
    }
}
