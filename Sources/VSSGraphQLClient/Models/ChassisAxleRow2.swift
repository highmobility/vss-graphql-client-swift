//
//  ChassisAxleRow2.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAxleRow2: Object, ObjectSchema {

    /// Diameter of tires, in inches, as per ETRO / TRA standard.
    public var tireDiameter = Field<Int?, NoArguments>("tireDiameter")

    /// Width of tires, in inches, as per ETRO / TRA standard.
    public var tireWidth = Field<Int?, NoArguments>("tireWidth")

    public var wheel = Field<ChassisAxleRow2Wheel?, NoArguments>("wheel")

    /// Diameter of wheels (without tires), in inches, as per ETRO / TRA standard.
    public var wheelDiameter = Field<Int?, NoArguments>("wheelDiameter")

    /// Width of wheels (without tires), in inches, as per ETRO / TRA standard.
    public var wheelWidth = Field<Int?, NoArguments>("wheelWidth")

    public required init() { }
}