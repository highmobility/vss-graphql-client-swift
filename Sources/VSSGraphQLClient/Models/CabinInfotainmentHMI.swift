//
//  CabinInfotainmentHMI.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinInfotainmentHMI: GraphQLObjectType {

    /// ISO 639-1 standard language code for the current HMI
    public var currentLanguage: String? = nil

    /// Date format used in the current HMI
    public var dateFormat: CabinInfotainmentHMIDateFormat? = nil

    /// Current display theme
    public var dayNightMode: CabinInfotainmentHMIDayNightMode? = nil

    /// Distance unit used in the current HMI
    public var distanceUnit: CabinInfotainmentHMIDistanceUnit? = nil

    /// EV fuel economy unit used in the current HMI
    public var evEconomyUnits: CabinInfotainmentHMIEVEconomyUnits? = nil

    /// Fuel economy unit used in the current HMI
    public var fuelEconomyUnits: CabinInfotainmentHMIFuelEconomyUnits? = nil

    /// Temperature unit used in the current HMI
    public var temperatureUnit: CabinInfotainmentHMITemperatureUnit? = nil

    /// Time format used in the current HMI
    public var timeFormat: CabinInfotainmentHMITimeFormat? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "currentLanguage" : String.self,
            "dateFormat" : CabinInfotainmentHMIDateFormat.self,
            "dayNightMode" : CabinInfotainmentHMIDayNightMode.self,
            "distanceUnit" : CabinInfotainmentHMIDistanceUnit.self,
            "evEconomyUnits" : CabinInfotainmentHMIEVEconomyUnits.self,
            "fuelEconomyUnits" : CabinInfotainmentHMIFuelEconomyUnits.self,
            "temperatureUnit" : CabinInfotainmentHMITemperatureUnit.self,
            "timeFormat" : CabinInfotainmentHMITimeFormat.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}