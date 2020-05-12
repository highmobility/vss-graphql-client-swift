//
//  ChassisAxleRow1.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAxleRow1: Object, ObjectSchema {

    /// Diameter of tires, in inches, as per ETRO / TRA standard.
    public var tireDiameter = Field<Int?, NoArguments>("tireDiameter")

    /// Width of tires, in inches, as per ETRO / TRA standard.
    public var tireWidth = Field<Int?, NoArguments>("tireWidth")

    public var wheel = Field<ChassisAxleRow1Wheel?, NoArguments>("wheel")

    /// Number of wheels on the first axle
    public var wheelCount = Field<Int?, NoArguments>("wheelCount")

    /// Diameter of wheels (without tires), in inches, as per ETRO / TRA standard.
    public var wheelDiameter = Field<Int?, NoArguments>("wheelDiameter")

    /// Width of wheels (without tires), in inches, as per ETRO / TRA standard.
    public var wheelWidth = Field<Int?, NoArguments>("wheelWidth")

    public required init() { }
}
