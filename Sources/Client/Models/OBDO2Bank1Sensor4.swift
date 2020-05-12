//
//  OBDO2Bank1Sensor4.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2Bank1Sensor4: Object, ObjectSchema {

    /// PID 17 - Sensor voltage
    public var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}
