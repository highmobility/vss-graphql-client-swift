//
//  CabinSeatRow3Pos4Switch.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 14.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow3Pos4Switch: GraphQLType {

    /// Seat forward switch engaged
    public var backward: Bool? = nil

    /// Cooler switch for Seat heater
    public var cooler: Bool? = nil

    public var cushion: CabinSeatRow3Pos4SwitchCushion? = nil

    /// Seat down switch engaged
    public var down: Bool? = nil

    /// Seat forward switch engaged
    public var forward: Bool? = nil

    public var headRestraint: CabinSeatRow3Pos4SwitchHeadRestraint? = nil

    public var lumbar: CabinSeatRow3Pos4SwitchLumbar? = nil

    public var massage: CabinSeatRow3Pos4SwitchMassage? = nil

    public var recline: CabinSeatRow3Pos4SwitchRecline? = nil

    public var sideBolster: CabinSeatRow3Pos4SwitchSideBolster? = nil

    /// Seat up switch engaged
    public var up: Bool? = nil

    /// Warmer switch for Seat heater
    public var warmer: Bool? = nil
}