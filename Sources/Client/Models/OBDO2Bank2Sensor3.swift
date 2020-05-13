//
//  OBDO2Bank2Sensor3.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2Bank2Sensor3: Object, ObjectSchema {

    /// PID 1A - Sensor voltage
    public var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}