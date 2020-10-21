//
//  BodyMirrorsLeftHeating.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct BodyMirrorsLeftHeating: GraphQLObjectType {

    /// Mirror Heater on or off. True = Heater On. False = Heater Off.
    public var status: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "status" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}