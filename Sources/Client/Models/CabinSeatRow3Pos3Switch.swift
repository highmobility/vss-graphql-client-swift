//
//  CabinSeatRow3Pos3Switch.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow3Pos3Switch: Object, ObjectSchema {

    /// Seat forward switch engaged
    public var backward = Field<Bool?, NoArguments>("backward")

    /// Cooler switch for Seat heater
    public var cooler = Field<Bool?, NoArguments>("cooler")

    public var cushion = Field<CabinSeatRow3Pos3SwitchCushion?, NoArguments>("cushion")

    /// Seat down switch engaged
    public var down = Field<Bool?, NoArguments>("down")

    /// Seat forward switch engaged
    public var forward = Field<Bool?, NoArguments>("forward")

    public var headRestraint = Field<CabinSeatRow3Pos3SwitchHeadRestraint?, NoArguments>("headRestraint")

    public var lumbar = Field<CabinSeatRow3Pos3SwitchLumbar?, NoArguments>("lumbar")

    public var massage = Field<CabinSeatRow3Pos3SwitchMassage?, NoArguments>("massage")

    public var recline = Field<CabinSeatRow3Pos3SwitchRecline?, NoArguments>("recline")

    public var sideBolster = Field<CabinSeatRow3Pos3SwitchSideBolster?, NoArguments>("sideBolster")

    /// Seat up switch engaged
    public var up = Field<Bool?, NoArguments>("up")

    /// Warmer switch for Seat heater
    public var warmer = Field<Bool?, NoArguments>("warmer")

    public required init() { }
}