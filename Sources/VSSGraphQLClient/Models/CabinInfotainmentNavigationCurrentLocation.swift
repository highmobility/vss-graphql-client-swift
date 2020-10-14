//
//  CabinInfotainmentNavigationCurrentLocation.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 14.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinInfotainmentNavigationCurrentLocation: GraphQLType {

    /// Accuracy level of the latitude and longitude coordinates in meters.
    public var accuracy: Float? = nil

    /// Current elevation of the position in meters.
    public var altitude: Float? = nil

    /// Current magnetic compass heading, in degrees.
    public var heading: Float? = nil

    /// Current latitude of vehicle, as reported by GPS.
    public var latitude: Float? = nil

    /// Current longitude of vehicle, as reported by GPS.
    public var longitude: Float? = nil

    /// Vehicle speed, as sensed by the GPS receiver.
    public var speed: Int? = nil
}