//
//  DrivetrainInternalCombustionEngine.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class DrivetrainInternalCombustionEngine: Object, ObjectSchema {

    /// Engine configuration.
    var configuration = Field<DrivetrainInternalCombustionEngineConfiguration?, NoArguments>("configuration")

    /// Displacement in cubic centimetres.
    var displacement = Field<Int?, NoArguments>("displacement")

    var engine = Field<DrivetrainInternalCombustionEngineEngine?, NoArguments>("engine")

    /// Type of fuel that the engine runs on.
    var fuelType = Field<DrivetrainInternalCombustionEngineFuelType?, NoArguments>("fuelType")

    /// Peak power, in kilowatts, that engine can generate.
    var maxPower = Field<Int?, NoArguments>("maxPower")

    /// Peak power, in newton meter, that the engine can generate.
    var maxTorque = Field<Int?, NoArguments>("maxTorque")

    public required init() { }
}