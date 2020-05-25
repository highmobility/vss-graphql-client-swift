//
//  CabinDoor.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinDoor: Object, ObjectSchema {

    /// Number of doors in vehicle
    public var count = Field<Int?, NoArguments>("count")

    public var row1 = Field<CabinDoorRow1?, NoArguments>("row1")

    public var row2 = Field<CabinDoorRow2?, NoArguments>("row2")

    public var row3 = Field<CabinDoorRow3?, NoArguments>("row3")

    public var row4 = Field<CabinDoorRow4?, NoArguments>("row4")

    public required init() { }
}