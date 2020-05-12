//
//  OBDO2WRSensor3.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2WRSensor3: Object, ObjectSchema {

    /// PID 36 - Lambda current for wide range/band oxygen sensor 4
    public var current = Field<Float?, NoArguments>("current")

    /// PID 26 - Lambda voltage for wide range/band oxygen sensor 3
    public var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}
