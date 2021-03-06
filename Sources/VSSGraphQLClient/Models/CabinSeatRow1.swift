//
//  CabinSeatRow1.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow1: GraphQLObjectType {

    public var pos1: CabinSeatRow1Pos1? = nil

    public var pos2: CabinSeatRow1Pos2? = nil

    public var pos3: CabinSeatRow1Pos3? = nil

    public var pos4: CabinSeatRow1Pos4? = nil

    public var pos5: CabinSeatRow1Pos5? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [:]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "pos1" : CabinSeatRow1Pos1.self,
            "pos2" : CabinSeatRow1Pos2.self,
            "pos3" : CabinSeatRow1Pos3.self,
            "pos4" : CabinSeatRow1Pos4.self,
            "pos5" : CabinSeatRow1Pos5.self
        ]
    }
}