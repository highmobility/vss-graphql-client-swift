//
//  CabinSeatRow3Pos5Switch.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow3Pos5Switch: Object, ObjectSchema {

    /// Seat forward switch engaged
    public var backward = Field<Bool?, NoArguments>("backward")

    /// Cooler switch for Seat heater
    public var cooler = Field<Bool?, NoArguments>("cooler")

    public var cushion = Field<CabinSeatRow3Pos5SwitchCushion?, NoArguments>("cushion")

    /// Seat down switch engaged
    public var down = Field<Bool?, NoArguments>("down")

    /// Seat forward switch engaged
    public var forward = Field<Bool?, NoArguments>("forward")

    public var headRestraint = Field<CabinSeatRow3Pos5SwitchHeadRestraint?, NoArguments>("headRestraint")

    public var lumbar = Field<CabinSeatRow3Pos5SwitchLumbar?, NoArguments>("lumbar")

    public var massage = Field<CabinSeatRow3Pos5SwitchMassage?, NoArguments>("massage")

    public var recline = Field<CabinSeatRow3Pos5SwitchRecline?, NoArguments>("recline")

    public var sideBolster = Field<CabinSeatRow3Pos5SwitchSideBolster?, NoArguments>("sideBolster")

    /// Seat up switch engaged
    public var up = Field<Bool?, NoArguments>("up")

    /// Warmer switch for Seat heater
    public var warmer = Field<Bool?, NoArguments>("warmer")

    public required init() { }
}