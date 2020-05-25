//
//  CabinInfotainmentNavigationCurrentLocation.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinInfotainmentNavigationCurrentLocation: Object, ObjectSchema {

    /// Accuracy level of the latitude and longitude coordinates in meters.
    public var accuracy = Field<Float?, NoArguments>("accuracy")

    /// Current elevation of the position in meters.
    public var altitude = Field<Float?, NoArguments>("altitude")

    /// Current magnetic compass heading, in degrees.
    public var heading = Field<Float?, NoArguments>("heading")

    /// Current latitude of vehicle, as reported by GPS.
    public var latitude = Field<Float?, NoArguments>("latitude")

    /// Current longitude of vehicle, as reported by GPS.
    public var longitude = Field<Float?, NoArguments>("longitude")

    /// Vehicle speed, as sensed by the GPS receiver.
    public var speed = Field<Int?, NoArguments>("speed")

    public required init() { }
}