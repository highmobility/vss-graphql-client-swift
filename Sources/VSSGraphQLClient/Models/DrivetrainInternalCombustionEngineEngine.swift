//
//  DrivetrainInternalCombustionEngineEngine.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class DrivetrainInternalCombustionEngineEngine: Object, ObjectSchema {

    /// Ambient (Outside) air temperature
    public var ambientAirTemperature = Field<Float?, NoArguments>("ambientAirTemperature")

    /// Engine coolant temperature.
    public var ect = Field<Int?, NoArguments>("ect")

    /// Engine oil pressure.
    public var eop = Field<Int?, NoArguments>("eop")

    /// Engine oil temperature.
    public var eot = Field<Int?, NoArguments>("eot")

    /// Grams of air drawn into engine per second.
    public var maf = Field<Int?, NoArguments>("maf")

    /// Manifold air pressure possibly boosted using forced induction.
    public var map = Field<Int?, NoArguments>("map")

    /// Current engine power output.
    public var power = Field<Int?, NoArguments>("power")

    /// Engine speed measured as rotations per minute.
    public var speed = Field<Int?, NoArguments>("speed")

    /// Current throttle position.
    public var tps = Field<Int?, NoArguments>("tps")

    /// Current engine torque.
    public var torque = Field<Int?, NoArguments>("torque")

    public required init() { }
}