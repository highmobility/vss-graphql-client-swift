//
//  BodyLights.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct BodyLights: GraphQLObjectType {

    /// Is backup (reverse) light on
    public var isBackupOn: Bool? = nil

    /// Is brake light on
    public var isBrakeOn: Bool? = nil

    /// Is front fog light on
    public var isFrontFogOn: Bool? = nil

    /// Are hazards on
    public var isHazardOn: Bool? = nil

    /// Is high beam on
    public var isHighBeamOn: Bool? = nil

    /// Is left indicator flashing
    public var isLeftIndicatorOn: Bool? = nil

    /// Is low beam on
    public var isLowBeamOn: Bool? = nil

    /// Is parking light on
    public var isParkingOn: Bool? = nil

    /// Is rear fog light on
    public var isRearFogOn: Bool? = nil

    /// Is right indicator flashing
    public var isRightIndicatorOn: Bool? = nil

    /// Are running lights on
    public var isRunningOn: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "isBackupOn" : Bool.self,
            "isBrakeOn" : Bool.self,
            "isFrontFogOn" : Bool.self,
            "isHazardOn" : Bool.self,
            "isHighBeamOn" : Bool.self,
            "isLeftIndicatorOn" : Bool.self,
            "isLowBeamOn" : Bool.self,
            "isParkingOn" : Bool.self,
            "isRearFogOn" : Bool.self,
            "isRightIndicatorOn" : Bool.self,
            "isRunningOn" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}