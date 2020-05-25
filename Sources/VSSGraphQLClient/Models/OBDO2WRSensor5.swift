//
//  OBDO2WRSensor5.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2WRSensor5: Object, ObjectSchema {

    /// PID 38 - Lambda current for wide range/band oxygen sensor 5
    public var current = Field<Float?, NoArguments>("current")

    /// PID 28 - Lambda voltage for wide range/band oxygen sensor 5
    public var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}