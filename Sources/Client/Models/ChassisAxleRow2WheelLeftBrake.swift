//
//  ChassisAxleRow2WheelLeftBrake.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAxleRow2WheelLeftBrake: Object, ObjectSchema {

    /// Brake pad wear status. True = Worn. False = Not Worn.
    public var brakesWorn = Field<Bool?, NoArguments>("brakesWorn")

    /// Brake fluid level as percent. 0 = Empty. 100 = Full.
    public var fluidLevel = Field<Int?, NoArguments>("fluidLevel")

    /// Brake fluid level status. True = Brake fluid level low. False = Brake fluid level OK.
    public var fluidLevelLow = Field<Bool?, NoArguments>("fluidLevelLow")

    /// Brake pad wear as percent. 0 = No Wear. 100 = Worn.
    public var padWear = Field<Int?, NoArguments>("padWear")

    public required init() { }
}