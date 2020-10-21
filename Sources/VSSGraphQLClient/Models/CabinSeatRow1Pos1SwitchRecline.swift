//
//  CabinSeatRow1Pos1SwitchRecline.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow1Pos1SwitchRecline: GraphQLObjectType {

    /// Seatback recline backward switch engaged
    public var backward: Bool? = nil

    /// Seatback recline forward switch engaged
    public var forward: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "backward" : Bool.self,
            "forward" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}