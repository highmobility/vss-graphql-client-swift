//
//  Vehicle.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class Vehicle: Object, ObjectSchema {

    public var adas = Field<ADAS?, NoArguments>("adas")

    public var acceleration = Field<Acceleration?, NoArguments>("acceleration")

    /// The time needed to accelerate the vehicle from a given start velocity to a given target velocity.
    public var accelerationTime = Field<Int?, NoArguments>("accelerationTime")

    /// Ambient air temperature
    public var ambientAirTemperature = Field<Float?, NoArguments>("ambientAirTemperature")

    public var angularVelocity = Field<AngularVelocity?, NoArguments>("angularVelocity")

    /// Average speed for the current trip
    public var averageSpeed = Field<Float?, NoArguments>("averageSpeed")

    public var body = Field<Body?, NoArguments>("body")

    public var cabin = Field<Cabin?, NoArguments>("cabin")

    /// The available volume for cargo or luggage. For automobiles, this is usually the trunk volume.
    public var cargoVolume = Field<Int?, NoArguments>("cargoVolume")

    public var chassis = Field<Chassis?, NoArguments>("chassis")

    /// Accumulated drive time in seconds.
    public var driveTime = Field<Float?, NoArguments>("driveTime")

    public var drivetrain = Field<Drivetrain?, NoArguments>("drivetrain")

    /// The CO2 emissions in g/km.
    public var emissionsCO2 = Field<Int?, NoArguments>("emissionsCO2")

    /// Accumulated idle time in seconds.
    public var idleTime = Field<Float?, NoArguments>("idleTime")

    /// Accumulated ignition off time in seconds.
    public var ignitionOffTime = Field<Float?, NoArguments>("ignitionOffTime")

    /// Accumulated ignition on time in seconds.
    public var ignitionOnTime = Field<Float?, NoArguments>("ignitionOnTime")

    /// Indicates whether the vehicle is stationary or moving
    public var isMoving = Field<Bool?, NoArguments>("isMoving")

    public var obd = Field<OBD?, NoArguments>("obd")

    /// The permitted total weight of cargo and installations (e.g. a roof rack) on top of the vehicle.
    public var roofLoad = Field<Int?, NoArguments>("roofLoad")

    /// Vehicle speed, as sensed by the gearbox.
    public var speed = Field<Float?, NoArguments>("speed")

    /// Odometer reading
    public var travelledDistance = Field<Float?, NoArguments>("travelledDistance")

    /// Current trip meter reading
    public var tripMeterReading = Field<Float?, NoArguments>("tripMeterReading")

    public var vehicleIdentification = Field<VehicleIdentification?, NoArguments>("vehicleIdentification")

    public required init() { }
}
