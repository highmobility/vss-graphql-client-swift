//
//  OBDCatalystBank1.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct OBDCatalystBank1: GraphQLObjectType {

    /// PID 3C - Catalyst temperature from bank 1, sensor 1
    public var temperature1: Float? = nil

    /// PID 3E - Catalyst temperature from bank 1, sensor 2
    public var temperature2: Float? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "temperature1" : Float.self,
            "temperature2" : Float.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}