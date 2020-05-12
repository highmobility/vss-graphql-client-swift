//
//  OBDO2WRSensor7.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2WRSensor7: Object, ObjectSchema {

    /// PID 3A - Lambda current for wide range/band oxygen sensor 7
    public var current = Field<Float?, NoArguments>("current")

    /// PID 2A - Lambda voltage for wide range/band oxygen sensor 7
    public var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}