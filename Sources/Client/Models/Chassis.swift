//
//  Chassis.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class Chassis: Object, ObjectSchema {

    public var accelerator = Field<ChassisAccelerator?, NoArguments>("accelerator")

    public var axle = Field<ChassisAxle?, NoArguments>("axle")

    public var brake = Field<ChassisBrake?, NoArguments>("brake")

    /// Vehicle curb weight, in kg, including all liquids and full tank of fuel, but no cargo or passengers.
    public var curbWeight = Field<Int?, NoArguments>("curbWeight")

    /// Curb weight of vehicle, including all liquids and full tank of fuel and full load of cargo and passengers.
    public var grossWeight = Field<Int?, NoArguments>("grossWeight")

    /// Overall vehicle height, in mm.
    public var height = Field<Int?, NoArguments>("height")

    /// Overall vehicle length, in mm.
    public var length = Field<Int?, NoArguments>("length")

    public var parkingBrake = Field<ChassisParkingBrake?, NoArguments>("parkingBrake")

    public var steeringWheel = Field<ChassisSteeringWheel?, NoArguments>("steeringWheel")

    /// Maximum weight, in kilos, of trailer.
    public var towWeight = Field<Int?, NoArguments>("towWeight")

    /// Overall wheel tracking, in mm.
    public var track = Field<Int?, NoArguments>("track")

    public var trailer = Field<ChassisTrailer?, NoArguments>("trailer")

    /// Overall wheel base, in mm.
    public var wheelbase = Field<Int?, NoArguments>("wheelbase")

    /// Overall vehicle width, in mm.
    public var width = Field<Int?, NoArguments>("width")

    public required init() { }
}