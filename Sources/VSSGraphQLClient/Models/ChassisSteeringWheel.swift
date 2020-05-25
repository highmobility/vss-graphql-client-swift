//
//  ChassisSteeringWheel.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisSteeringWheel: Object, ObjectSchema {

    /// Steering wheel angle. Positive = degrees to the left. Negative = degrees to the right.
    public var angle = Field<Int?, NoArguments>("angle")

    /// Steering wheel column extension from dashboard. 0 = Closest to dashboard. 100 = Furthest from dashboard.
    public var `extension` = Field<Int?, NoArguments>("extension")

    /// Steering wheel column tilt. 0 = Lowest position. 100 = Highest position.
    public var tilt = Field<Int?, NoArguments>("tilt")

    public required init() { }
}