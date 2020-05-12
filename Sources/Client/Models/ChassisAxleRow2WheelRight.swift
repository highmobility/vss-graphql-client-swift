//
//  ChassisAxleRow2WheelRight.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAxleRow2WheelRight: Object, ObjectSchema {

    public var brake = Field<ChassisAxleRow2WheelRightBrake?, NoArguments>("brake")

    public var tire = Field<ChassisAxleRow2WheelRightTire?, NoArguments>("tire")

    public required init() { }
}