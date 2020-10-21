//
//  CabinSeatRow2Pos5Switch.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow2Pos5Switch: GraphQLObjectType {

    /// Seat forward switch engaged
    public var backward: Bool? = nil

    /// Cooler switch for Seat heater
    public var cooler: Bool? = nil

    public var cushion: CabinSeatRow2Pos5SwitchCushion? = nil

    /// Seat down switch engaged
    public var down: Bool? = nil

    /// Seat forward switch engaged
    public var forward: Bool? = nil

    public var headRestraint: CabinSeatRow2Pos5SwitchHeadRestraint? = nil

    public var lumbar: CabinSeatRow2Pos5SwitchLumbar? = nil

    public var massage: CabinSeatRow2Pos5SwitchMassage? = nil

    public var recline: CabinSeatRow2Pos5SwitchRecline? = nil

    public var sideBolster: CabinSeatRow2Pos5SwitchSideBolster? = nil

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
            "cushion" : CabinSeatRow2Pos5SwitchCushion.self,
            "headRestraint" : CabinSeatRow2Pos5SwitchHeadRestraint.self,
            "lumbar" : CabinSeatRow2Pos5SwitchLumbar.self,
            "massage" : CabinSeatRow2Pos5SwitchMassage.self,
            "recline" : CabinSeatRow2Pos5SwitchRecline.self,
            "sideBolster" : CabinSeatRow2Pos5SwitchSideBolster.self
        ]
    }
}