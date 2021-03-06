//
//  ChassisAxleRow2Wheel.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct ChassisAxleRow2Wheel: GraphQLObjectType {

    public var `left`: ChassisAxleRow2WheelLeft? = nil

    public var `right`: ChassisAxleRow2WheelRight? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [:]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "`left`" : ChassisAxleRow2WheelLeft.self,
            "`right`" : ChassisAxleRow2WheelRight.self
        ]
    }
}