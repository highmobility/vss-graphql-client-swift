//
//  CabinSeatRow1Pos1Switch.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow1Pos1Switch: GraphQLObjectType {

    /// Seat forward switch engaged
    public var backward: Bool? = nil

    /// Cooler switch for Seat heater
    public var cooler: Bool? = nil

    public var cushion: CabinSeatRow1Pos1SwitchCushion? = nil

    /// Seat down switch engaged
    public var down: Bool? = nil

    /// Seat forward switch engaged
    public var forward: Bool? = nil

    public var headRestraint: CabinSeatRow1Pos1SwitchHeadRestraint? = nil

    public var lumbar: CabinSeatRow1Pos1SwitchLumbar? = nil

    public var massage: CabinSeatRow1Pos1SwitchMassage? = nil

    public var recline: CabinSeatRow1Pos1SwitchRecline? = nil

    public var sideBolster: CabinSeatRow1Pos1SwitchSideBolster? = nil

    /// Seat up switch engaged
    public var up: Bool? = nil

    /// Warmer switch for Seat heater
    public var warmer: Bool? = nil
}