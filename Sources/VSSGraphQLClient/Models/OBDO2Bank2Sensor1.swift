//
//  OBDO2Bank2Sensor1.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2Bank2Sensor1: Object, ObjectSchema {

    /// PID 18 - Sensor voltage
    public var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}