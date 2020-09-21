//
//  OBDO2WRSensor4.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2WRSensor4: Object, ObjectSchema {

    /// PID 37 - Lambda current for wide range/band oxygen sensor 4
    public var current = Field<Float?, NoArguments>("current")

    /// PID 27 - Lambda voltage for wide range/band oxygen sensor 4
    public var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}