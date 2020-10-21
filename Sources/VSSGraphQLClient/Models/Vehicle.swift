//
//  Vehicle.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct Vehicle: GraphQLObjectType {

    public var adas: ADAS? = nil

    public var acceleration: Acceleration? = nil

    /// The time needed to accelerate the vehicle from a given start velocity to a given target velocity.
    public var accelerationTime: Int? = nil

    /// Ambient air temperature
    public var ambientAirTemperature: Float? = nil

    public var angularVelocity: AngularVelocity? = nil

    /// Average speed for the current trip
    public var averageSpeed: Float? = nil

    public var body: Body? = nil

    public var cabin: Cabin? = nil

    /// The available volume for cargo or luggage. For automobiles, this is usually the trunk volume.
    public var cargoVolume: Int? = nil

    public var chassis: Chassis? = nil

    /// Accumulated drive time in seconds.
    public var driveTime: Float? = nil

    public var drivetrain: Drivetrain? = nil

    /// The CO2 emissions in g/km.
    public var emissionsCO2: Int? = nil

    /// Accumulated idle time in seconds.
    public var idleTime: Float? = nil

    /// Accumulated ignition off time in seconds.
    public var ignitionOffTime: Float? = nil

    /// Accumulated ignition on time in seconds.
    public var ignitionOnTime: Float? = nil

    /// Indicates whether the vehicle is stationary or moving
    public var isMoving: Bool? = nil

    public var obd: OBD? = nil

    /// The permitted total weight of cargo and installations (e.g. a roof rack) on top of the vehicle.
    public var roofLoad: Int? = nil

    /// Vehicle speed, as sensed by the gearbox.
    public var speed: Float? = nil

    /// Odometer reading
    public var travelledDistance: Float? = nil

    /// Current trip meter reading
    public var tripMeterReading: Float? = nil

    public var vehicleIdentification: VehicleIdentification? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "accelerationTime" : Int.self,
            "ambientAirTemperature" : Float.self,
            "averageSpeed" : Float.self,
            "cargoVolume" : Int.self,
            "driveTime" : Float.self,
            "emissionsCO2" : Int.self,
            "idleTime" : Float.self,
            "ignitionOffTime" : Float.self,
            "ignitionOnTime" : Float.self,
            "isMoving" : Bool.self,
            "roofLoad" : Int.self,
            "speed" : Float.self,
            "travelledDistance" : Float.self,
            "tripMeterReading" : Float.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "adas" : ADAS.self,
            "acceleration" : Acceleration.self,
            "angularVelocity" : AngularVelocity.self,
            "body" : Body.self,
            "cabin" : Cabin.self,
            "chassis" : Chassis.self,
            "drivetrain" : Drivetrain.self,
            "obd" : OBD.self,
            "vehicleIdentification" : VehicleIdentification.self
        ]
    }
}