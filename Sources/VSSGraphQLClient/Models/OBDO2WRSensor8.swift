//
//  OBDO2WRSensor8.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct OBDO2WRSensor8: GraphQLObjectType {

    /// PID 3B - Lambda current for wide range/band oxygen sensor 8
    public var current: Float? = nil

    /// PID 2B - Lambda voltage for wide range/band oxygen sensor 8
    public var voltage: Float? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "current" : Float.self,
            "voltage" : Float.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}