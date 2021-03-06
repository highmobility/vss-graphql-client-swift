//
//  ChassisAxleRow1.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct ChassisAxleRow1: GraphQLObjectType {

    /// Diameter of tires, in inches, as per ETRO / TRA standard.
    public var tireDiameter: Int? = nil

    /// Width of tires, in inches, as per ETRO / TRA standard.
    public var tireWidth: Int? = nil

    public var wheel: ChassisAxleRow1Wheel? = nil

    /// Number of wheels on the first axle
    public var wheelCount: Int? = nil

    /// Diameter of wheels (without tires), in inches, as per ETRO / TRA standard.
    public var wheelDiameter: Int? = nil

    /// Width of wheels (without tires), in inches, as per ETRO / TRA standard.
    public var wheelWidth: Int? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "tireDiameter" : Int.self,
            "tireWidth" : Int.self,
            "wheelCount" : Int.self,
            "wheelDiameter" : Int.self,
            "wheelWidth" : Int.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "wheel" : ChassisAxleRow1Wheel.self
        ]
    }
}