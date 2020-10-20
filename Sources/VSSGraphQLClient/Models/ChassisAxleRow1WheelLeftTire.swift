//
//  ChassisAxleRow1WheelLeftTire.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct ChassisAxleRow1WheelLeftTire: GraphQLObjectType {

    /// Tire pressure in kilo-Pascal
    public var pressure: Int? = nil

    /// Tire Pressure Status. True = Low tire pressure. False = Good tire pressure.
    public var pressureLow: Bool? = nil

    /// Tire temperature in Celsius.
    public var temperature: Float? = nil
}