//
//  GraphQLType.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 06.10.20.
//

import Foundation


public protocol GraphQLType: Decodable {

}

public protocol GraphQLEnumType: GraphQLType {

}

public protocol GraphQLObjectType: GraphQLType {

    static var scalars: [String : Any] { get }
    static var objects: [String : GraphQLObjectType.Type] { get }
}
