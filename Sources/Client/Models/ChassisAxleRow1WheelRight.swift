//
//  ChassisAxleRow1WheelRight.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAxleRow1WheelRight: Object, ObjectSchema {

    public var brake = Field<ChassisAxleRow1WheelRightBrake?, NoArguments>("brake")

    public var tire = Field<ChassisAxleRow1WheelRightTire?, NoArguments>("tire")

    public required init() { }
}