//
//  CabinSeatRow4Pos1SwitchSideBolster.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow4Pos1SwitchSideBolster: GraphQLObjectType {

    /// Lumbar deflation switch engaged
    public var deflate: Bool? = nil

    /// Lumbar inflation switch engaged
    public var inflate: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "deflate" : Bool.self,
            "inflate" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}