//
//  CabinSeatRow4Pos1.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow4Pos1: Object, ObjectSchema {

    public var airbag = Field<CabinSeatRow4Pos1Airbag?, NoArguments>("airbag")

    public var cushion = Field<CabinSeatRow4Pos1Cushion?, NoArguments>("cushion")

    /// Does the seat have a passenger in it.
    public var hasPassenger = Field<Bool?, NoArguments>("hasPassenger")

    public var headRestraint = Field<CabinSeatRow4Pos1HeadRestraint?, NoArguments>("headRestraint")

    /// Seat cooling / heating. 0 = off. -100 = max cold. +100 = max heat
    public var heating = Field<Int?, NoArguments>("heating")

    /// Is the belt engaged.
    public var isBelted = Field<Bool?, NoArguments>("isBelted")

    public var lumbar = Field<CabinSeatRow4Pos1Lumbar?, NoArguments>("lumbar")

    /// Seat massage level. 0 = off. 100 = max massage.
    public var massage = Field<Int?, NoArguments>("massage")

    /// Seat horizontal position. 0 = Frontmost. 1000 = Rearmost
    public var position = Field<Int?, NoArguments>("position")

    /// Recline level. -90 = Max forward recline. 90 max backward recline
    public var recline = Field<Int?, NoArguments>("recline")

    public var sideBolster = Field<CabinSeatRow4Pos1SideBolster?, NoArguments>("sideBolster")

    public var `switch` = Field<CabinSeatRow4Pos1Switch?, NoArguments>("switch")

    public required init() { }
}