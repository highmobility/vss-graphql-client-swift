//
//  CabinSeatRow1Pos3Cushion.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow1Pos3Cushion: GraphQLObjectType {

    /// Height of the seat front. 0 = Lowermost. 500 = Uppermost.
    public var height: Int? = nil

    /// Forward length of cushion (leg support). 0 = Rearmost. 500 = Forwardmost.
    public var length: Int? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "height" : Int.self,
            "length" : Int.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}