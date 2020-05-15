//
//  ChassisAxleRow1WheelLeft.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAxleRow1WheelLeft: Object, ObjectSchema {

    public var brake = Field<ChassisAxleRow1WheelLeftBrake?, NoArguments>("brake")

    public var tire = Field<ChassisAxleRow1WheelLeftTire?, NoArguments>("tire")

    public required init() { }
}