//
//  BodyTrunk.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct BodyTrunk: GraphQLObjectType {

    /// Is trunk locked or unlocked. True = Locked. False = Unlocked.
    public var isLocked: Bool? = nil

    /// Trunk open or closed. True = Open. False = Closed
    public var isOpen: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "isLocked" : Bool.self,
            "isOpen" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}