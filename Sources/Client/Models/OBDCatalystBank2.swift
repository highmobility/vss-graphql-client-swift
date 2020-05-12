//
//  OBDCatalystBank2.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
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
