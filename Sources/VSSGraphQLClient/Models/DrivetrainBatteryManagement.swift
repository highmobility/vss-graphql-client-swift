//
//  DrivetrainBatteryManagement.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct DrivetrainBatteryManagement: GraphQLObjectType {

    /// Remaining capacity of the batter pack
    public var batteryCapacity: Int? = nil

    /// Temperature of the battery pack (in C)
    public var batteryTemperature: Float? = nil

    /// Indicates the primary charging inlet type fitted to the vehicle
    public var chargingInlet: DrivetrainBatteryManagementChargingInlet? = nil

    /// Indicates that the battery level is low
    public var lowBatteryLevel: Bool? = nil

    /// Gross capacity of the battery (in kWh)
    public var grossCapacity: Int? = nil

    /// Net capacity of the battery (in kWh)
    public var netCapacity: Int? = nil

    /// Nominal Voltage of the battery (in V)
    public var nominalVoltage: Int? = nil

    /// Referent Voltage of the battery (in V)
    public var referentVoltage: Int? = nil

    /// The accumulated energy delivered to the battery during charging over lifetime (in kWh)
    public var accumulatedChargedEnergy: Float? = nil

    /// The accumulated energy leaving HV battery for propulsion and auxiliary loads over lifetime (in kWh)
    public var accumulatedConsumedEnergy: Float? = nil

    /// Information on the state of charge of the vehicle's high voltage battery
    public var stateOfCharge: DrivetrainBatteryManagementStateOfCharge? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "batteryCapacity" : Int.self,
            "batteryTemperature" : Float.self,
            "chargingInlet" : DrivetrainBatteryManagementChargingInlet.self,
            "lowBatteryLevel" : Bool.self,
            "grossCapacity" : Int.self,
            "netCapacity" : Int.self,
            "nominalVoltage" : Int.self,
            "referentVoltage" : Int.self,
            "accumulatedChargedEnergy" : Float.self,
            "accumulatedConsumedEnergy" : Float.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "stateOfCharge" : DrivetrainBatteryManagementStateOfCharge.self
        ]
    }
}