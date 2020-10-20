//
//  VehicleIdentification.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct VehicleIdentification: GraphQLObjectType {

    /// The ACRISS Car Classification Code is a code used by many car rental companies.
    public var acrissCode: String? = nil

    /// Vehicle brand or manufacturer
    public var brand: String? = nil

    /// Vehicle model
    public var model: String? = nil

    /// 17-character Vehicle Identification Number (VIN) as defined by ISO 3779
    public var vin: String? = nil

    /// 3-character World Manufacturer Identification (WMI) as defined by ISO 3780
    public var wmi: String? = nil

    /// Model year of the vehicle
    public var year: Int? = nil

    /// Indicates the design and body style of the vehicle (e.g. station wagon, hatchback, etc.).
    public var bodyType: String? = nil

    /// The date of the first registration of the vehicle with the respective public authorities.
    public var dateVehicleFirstRegistered: String? = nil

    /// A textual description of known damages, both repaired and unrepaired.
    public var knownVehicleDamages: String? = nil

    /// Indicates that the vehicle meets the respective emission standard.
    public var meetsEmissionStandard: String? = nil

    /// The date of production of the item, e.g. vehicle.
    public var productionDate: String? = nil

    /// The date the item e.g. vehicle was purchased by the current owner.
    public var purchaseDate: String? = nil

    /// A short text indicating the configuration of the vehicle, e.g. '5dr hatchback ST 2.5 MT 225 hp' or 'limited edition'.
    public var vehicleConfiguration: String? = nil

    /// A short text indicating the configuration of the vehicle, e.g. '5dr hatchback ST 2.5 MT 225 hp' or 'limited edition'.
    public var vehicleInteriorColor: String? = nil

    /// The type or material of the interior of the vehicle (e.g. synthetic fabric, leather, wood, etc.).
    public var vehicleInteriorType: String? = nil

    /// The release date of a vehicle model (often used to differentiate versions of the same make and model).
    public var vehicleModelDate: String? = nil

    /// The number of passengers that can be seated in the vehicle, both in terms of the physical space available, and in terms of limitations set by law.
    public var vehicleSeatingCapacity: Int? = nil

    /// Indicates whether the vehicle has been used for special purposes, like commercial rental, driving school.
    public var vehicleSpecialUsage: String? = nil
}