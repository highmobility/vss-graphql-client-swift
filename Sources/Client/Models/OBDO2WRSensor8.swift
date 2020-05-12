//
//  OBDO2WRSensor8.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2WRSensor8: Object, ObjectSchema {

    /// PID 3B - Lambda current for wide range/band oxygen sensor 8
    public var current = Field<Float?, NoArguments>("current")

    /// PID 2B - Lambda voltage for wide range/band oxygen sensor 8
    public var voltage = Field<Float?, NoArguments>("voltage")

    public required init() { }
}