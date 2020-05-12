//
//  CabinInfotainmentHMI.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinInfotainmentHMI: Object, ObjectSchema {

    /// ISO 639-1 standard language code for the current HMI
    public var currentLanguage = Field<String?, NoArguments>("currentLanguage")

    /// Date format used in the current HMI
    public var dateFormat = Field<CabinInfotainmentHMIDateFormat?, NoArguments>("dateFormat")

    /// Current display theme
    public var dayNightMode = Field<CabinInfotainmentHMIDayNightMode?, NoArguments>("dayNightMode")

    /// Distance unit used in the current HMI
    public var distanceUnit = Field<CabinInfotainmentHMIDistanceUnit?, NoArguments>("distanceUnit")

    /// EV fuel economy unit used in the current HMI
    public var evEconomyUnits = Field<CabinInfotainmentHMIEVEconomyUnits?, NoArguments>("evEconomyUnits")

    /// Fuel economy unit used in the current HMI
    public var fuelEconomyUnits = Field<CabinInfotainmentHMIFuelEconomyUnits?, NoArguments>("fuelEconomyUnits")

    /// Temperature unit used in the current HMI
    public var temperatureUnit = Field<CabinInfotainmentHMITemperatureUnit?, NoArguments>("temperatureUnit")

    /// Time format used in the current HMI
    public var timeFormat = Field<CabinInfotainmentHMITimeFormat?, NoArguments>("timeFormat")

    public required init() { }
}