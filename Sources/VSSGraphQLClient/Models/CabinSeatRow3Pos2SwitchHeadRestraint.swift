//
//  CabinSeatRow3Pos2SwitchHeadRestraint.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow3Pos2SwitchHeadRestraint: GraphQLObjectType {

    /// Head restraint down switch engaged
    public var down: Bool? = nil

    /// Head restraint up switch engaged
    public var up: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "down" : Bool.self,
            "up" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}