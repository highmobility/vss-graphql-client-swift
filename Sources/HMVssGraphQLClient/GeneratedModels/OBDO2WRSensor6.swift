//
//  OBDO2WRSensor6.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2WRSensor6: Object, ObjectSchema {

    /// PID 39 - Lambda current for wide range/band oxygen sensor 6
    var current = Field<Float?, NoArguments>("current")

    /// PID 29 - Lambda voltage for wide range/band oxygen sensor 6
    var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}