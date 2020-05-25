//
//  OBDCatalystBank2.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDCatalystBank2: Object, ObjectSchema {

    /// PID 3D - Catalyst temperature from bank 2, sensor 1
    public var temperature1 = Field<Float?, NoArguments>("temperature1")

    /// PID 3F - Catalyst temperature from bank 2, sensor 2
    public var temperature2 = Field<Float?, NoArguments>("temperature2")

    public required init() { }
}