//
//  OBDO2Bank1Sensor3.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct OBDO2Bank1Sensor3: GraphQLObjectType {

    /// PID 16 - Sensor voltage
    public var voltage: Float? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "voltage" : Float.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}