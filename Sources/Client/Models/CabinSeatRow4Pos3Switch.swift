//
//  CabinSeatRow4Pos3Switch.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow4Pos3Switch: Object, ObjectSchema {

    /// Seat forward switch engaged
    public var backward = Field<Bool?, NoArguments>("backward")

    /// Cooler switch for Seat heater
    public var cooler = Field<Bool?, NoArguments>("cooler")

    public var cushion = Field<CabinSeatRow4Pos3SwitchCushion?, NoArguments>("cushion")

    /// Seat down switch engaged
    public var down = Field<Bool?, NoArguments>("down")

    /// Seat forward switch engaged
    public var forward = Field<Bool?, NoArguments>("forward")

    public var headRestraint = Field<CabinSeatRow4Pos3SwitchHeadRestraint?, NoArguments>("headRestraint")

    public var lumbar = Field<CabinSeatRow4Pos3SwitchLumbar?, NoArguments>("lumbar")

    public var massage = Field<CabinSeatRow4Pos3SwitchMassage?, NoArguments>("massage")

    public var recline = Field<CabinSeatRow4Pos3SwitchRecline?, NoArguments>("recline")

    public var sideBolster = Field<CabinSeatRow4Pos3SwitchSideBolster?, NoArguments>("sideBolster")

    /// Seat up switch engaged
    public var up = Field<Bool?, NoArguments>("up")

    /// Warmer switch for Seat heater
    public var warmer = Field<Bool?, NoArguments>("warmer")

    public required init() { }
}