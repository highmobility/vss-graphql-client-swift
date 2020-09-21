//
//  Drivetrain.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class Drivetrain: Object, ObjectSchema {

    public var batteryManagement = Field<DrivetrainBatteryManagement?, NoArguments>("batteryManagement")

    public var electricMotor = Field<DrivetrainElectricMotor?, NoArguments>("electricMotor")

    public var fuelCell = Field<DrivetrainFuelCell?, NoArguments>("fuelCell")

    public var fuelSystem = Field<DrivetrainFuelSystem?, NoArguments>("fuelSystem")

    public var internalCombustionEngine = Field<DrivetrainInternalCombustionEngine?, NoArguments>("internalCombustionEngine")

    public var transmission = Field<DrivetrainTransmission?, NoArguments>("transmission")

    public required init() { }
}