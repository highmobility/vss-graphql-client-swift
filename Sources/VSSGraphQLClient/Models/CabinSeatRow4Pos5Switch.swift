//
//  CabinSeatRow4Pos5Switch.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow4Pos5Switch: GraphQLObjectType {

    /// Seat forward switch engaged
    public var backward: Bool? = nil

    /// Cooler switch for Seat heater
    public var cooler: Bool? = nil

    public var cushion: CabinSeatRow4Pos5SwitchCushion? = nil

    /// Seat down switch engaged
    public var down: Bool? = nil

    /// Seat forward switch engaged
    public var forward: Bool? = nil

    public var headRestraint: CabinSeatRow4Pos5SwitchHeadRestraint? = nil

    public var lumbar: CabinSeatRow4Pos5SwitchLumbar? = nil

    public var massage: CabinSeatRow4Pos5SwitchMassage? = nil

    public var recline: CabinSeatRow4Pos5SwitchRecline? = nil

    public var sideBolster: CabinSeatRow4Pos5SwitchSideBolster? = nil

    /// Seat up switch engaged
    public var up: Bool? = nil

    /// Warmer switch for Seat heater
    public var warmer: Bool? = nil
}