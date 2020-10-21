//
//  CabinSeatRow3Pos5Switch.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow3Pos5Switch: GraphQLObjectType {

    /// Seat forward switch engaged
    public var backward: Bool? = nil

    /// Cooler switch for Seat heater
    public var cooler: Bool? = nil

    public var cushion: CabinSeatRow3Pos5SwitchCushion? = nil

    /// Seat down switch engaged
    public var down: Bool? = nil

    /// Seat forward switch engaged
    public var forward: Bool? = nil

    public var headRestraint: CabinSeatRow3Pos5SwitchHeadRestraint? = nil

    public var lumbar: CabinSeatRow3Pos5SwitchLumbar? = nil

    public var massage: CabinSeatRow3Pos5SwitchMassage? = nil

    public var recline: CabinSeatRow3Pos5SwitchRecline? = nil

    public var sideBolster: CabinSeatRow3Pos5SwitchSideBolster? = nil

    /// Seat up switch engaged
    public var up: Bool? = nil

    /// Warmer switch for Seat heater
    public var warmer: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "backward" : Bool.self,
            "cooler" : Bool.self,
            "down" : Bool.self,
            "forward" : Bool.self,
            "up" : Bool.self,
            "warmer" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "cushion" : CabinSeatRow3Pos5SwitchCushion.self,
            "headRestraint" : CabinSeatRow3Pos5SwitchHeadRestraint.self,
            "lumbar" : CabinSeatRow3Pos5SwitchLumbar.self,
            "massage" : CabinSeatRow3Pos5SwitchMassage.self,
            "recline" : CabinSeatRow3Pos5SwitchRecline.self,
            "sideBolster" : CabinSeatRow3Pos5SwitchSideBolster.self
        ]
    }
}