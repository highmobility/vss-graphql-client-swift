//
//  OBDO2Bank2.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct OBDO2Bank2: GraphQLObjectType {

    public var sensor1: OBDO2Bank2Sensor1? = nil

    public var sensor2: OBDO2Bank2Sensor2? = nil

    public var sensor3: OBDO2Bank2Sensor3? = nil

    public var sensor4: OBDO2Bank2Sensor4? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [:]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "sensor1" : OBDO2Bank2Sensor1.self,
            "sensor2" : OBDO2Bank2Sensor2.self,
            "sensor3" : OBDO2Bank2Sensor3.self,
            "sensor4" : OBDO2Bank2Sensor4.self
        ]
    }
}