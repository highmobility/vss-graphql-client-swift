//
//  ChassisAxleRow1WheelRight.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAxleRow1WheelRight: Object, ObjectSchema {

    var brake = Field<ChassisAxleRow1WheelRightBrake?, NoArguments>("brake")

    var tire = Field<ChassisAxleRow1WheelRightTire?, NoArguments>("tire")

    public required init() { }
}