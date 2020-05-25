//
//  OBDO2Bank1Sensor2.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2Bank1Sensor2: Object, ObjectSchema {

    /// PID 15 - Sensor voltage
    public var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}