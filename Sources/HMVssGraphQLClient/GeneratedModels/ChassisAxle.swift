//
//  ChassisAxle.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAxle: Object, ObjectSchema {

    /// Number of axles on the vehicle
    var count = Field<Int?, NoArguments>("count")

    var row1 = Field<ChassisAxleRow1?, NoArguments>("row1")

    var row2 = Field<ChassisAxleRow2?, NoArguments>("row2")

    public required init() { }
}