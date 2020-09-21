//
//  OBDO2Bank1Sensor1.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2Bank1Sensor1: Object, ObjectSchema {

    /// PID 14 - Sensor voltage
    public var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}