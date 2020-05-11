//
//  CabinDoor.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinDoor: Object, ObjectSchema {

    /// Number of doors in vehicle
    var count = Field<Int?, NoArguments>("count")

    var row1 = Field<CabinDoorRow1?, NoArguments>("row1")

    var row2 = Field<CabinDoorRow2?, NoArguments>("row2")

    var row3 = Field<CabinDoorRow3?, NoArguments>("row3")

    var row4 = Field<CabinDoorRow4?, NoArguments>("row4")

    public required init() { }
}