//
//  File.swift
//  
//
//  Created by Mikk Rätsep on 30.04.20.
//

import Foundation
//import HMVssGraphQLClient
import Combine


let url = URL(string: "http://localhost:4000")!




print("tere\n")


//HMVssGraphQLClient.executeRequest()

//let client = HMVssGraphQLClient(url: url)

@available(OSX 10.15, *)
class ASD {

    private var cancellables: [AnyCancellable] = []


    typealias Reducor3 = (isNextLineDoc: Bool, types: [GraphType])


    func asddasd() throws {
        let filePath = "/Users/mikk/Desktop/Workspace.nosync/Source/hm-vss-graphql-client-swift/Sources/HMVssGraphQLClient/vehicle.ts"
        let schema = try String(contentsOfFile: filePath)

        let lines = schema
            .split(separator: "\n")
            .map { line in
                line.trimmingCharacters(in: .whitespacesAndNewlines)
            }
            .filter { line in   // Just skip comment lines
                !line.hasPrefix("#")
            }

        let aa = schema
            .split(separator: "\n")
            .publisher
            .map { line in
                line.trimmingCharacters(in: .whitespacesAndNewlines)
            }
            .filter { line in   // Just skip comment lines
                !line.hasPrefix("#")
            }
            .collect()
        .map
//            .reduce(Reducor3(false, [])) { result, line in
//                // Starts-ends the docs
//                if line == "\"\"\"" {
//                    return (!result.isNextLineDoc, result.types)
//                }
//
//                // Continue with docs
//                if result.isNextLineDoc {
//                    let type: GraphType
//
//                    if let last = result.types.last {
//                        type = last
//                        type.doc += line
//                    }
//                    else {
//                        type = GraphType(doc: line, content: "")
//                    }
//
//                    return (result.isNextLineDoc, result.types.dropLast() + [type])
//                }
//                // Start with type
//                else if line.hasPrefix("type") && line.hasSuffix("{") {
//                    let type: GraphType
//
//                    if let last = result.types.last, last.content == "" {
//                        type = last
//                    }
//                    else {
//                        type = GraphType(doc: "", content: line)
//                    }
//
//                    return (result.isNextLineDoc, result.types.dropLast() + [type])
//                }
//                else if line.hasPrefix("enum") && line.hasSuffix("{") {
//                    fatalError()
//                }
//                else {
//                    guard let type = result.types.last else {
//                        return result
//                    }
//
//                      // add line to entity
//                }
//
//
//                return (result.isNextLineDoc, [])
//            }


        print(lines[..<20].joined(separator: "\n"))

//        Just(try String(contentsOfFile: filePath)).map { schema in
////            schema.
//        }
    }
}

struct GraphType {

    var doc: String
    var content: String
}



if #available(OSX 10.15, *) {
    let asd = ASD()
    try? asd.asddasd()
}

print("\nläbi")
