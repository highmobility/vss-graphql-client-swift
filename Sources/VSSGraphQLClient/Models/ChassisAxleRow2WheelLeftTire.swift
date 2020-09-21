//
//  ChassisAxleRow2WheelLeftTire.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAxleRow2WheelLeftTire: Object, ObjectSchema {

    /// Tire pressure in kilo-Pascal
    public var pressure = Field<Int?, NoArguments>("pressure")

    /// Tire Pressure Status. True = Low tire pressure. False = Good tire pressure.
    public var pressureLow = Field<Bool?, NoArguments>("pressureLow")

    /// Tire temperature in Celsius.
    public var temperature = Field<Float?, NoArguments>("temperature")

    public required init() { }
}