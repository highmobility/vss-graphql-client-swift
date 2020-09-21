//
//  ChassisAxleRow2WheelLeft.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAxleRow2WheelLeft: Object, ObjectSchema {

    public var brake = Field<ChassisAxleRow2WheelLeftBrake?, NoArguments>("brake")

    public var tire = Field<ChassisAxleRow2WheelLeftTire?, NoArguments>("tire")

    public required init() { }
}