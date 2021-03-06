//
//  OBDO2WR.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct OBDO2WR: GraphQLObjectType {

    public var sensor1: OBDO2WRSensor1? = nil

    public var sensor2: OBDO2WRSensor2? = nil

    public var sensor3: OBDO2WRSensor3? = nil

    public var sensor4: OBDO2WRSensor4? = nil

    public var sensor5: OBDO2WRSensor5? = nil

    public var sensor6: OBDO2WRSensor6? = nil

    public var sensor7: OBDO2WRSensor7? = nil

    public var sensor8: OBDO2WRSensor8? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [:]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "sensor1" : OBDO2WRSensor1.self,
            "sensor2" : OBDO2WRSensor2.self,
            "sensor3" : OBDO2WRSensor3.self,
            "sensor4" : OBDO2WRSensor4.self,
            "sensor5" : OBDO2WRSensor5.self,
            "sensor6" : OBDO2WRSensor6.self,
            "sensor7" : OBDO2WRSensor7.self,
            "sensor8" : OBDO2WRSensor8.self
        ]
    }
}