//
//  DrivetrainBatteryManagement.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class DrivetrainBatteryManagement: Object, ObjectSchema {

    /// Remaining capacity of the batter pack
    public var batteryCapacity = Field<Int?, NoArguments>("batteryCapacity")

    /// Temperature of the battery pack
    public var batteryTemperature = Field<Float?, NoArguments>("batteryTemperature")

    /// Indicates the primary charging inlet type fitted to the vehicle
    public var chargingInlet = Field<DrivetrainBatteryManagementChargingInlet?, NoArguments>("chargingInlet")

    /// Indicates that the battery level is low
    public var lowBatteryLevel = Field<Bool?, NoArguments>("lowBatteryLevel")

    public required init() { }
}