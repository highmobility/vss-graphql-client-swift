//
//  Cabin.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class Cabin: Object, ObjectSchema {

    public var convertible = Field<CabinConvertible?, NoArguments>("convertible")

    public var door = Field<CabinDoor?, NoArguments>("door")

    public var hvac = Field<CabinHVAC?, NoArguments>("hvac")

    public var infotainment = Field<CabinInfotainment?, NoArguments>("infotainment")

    public var lights = Field<CabinLights?, NoArguments>("lights")

    public var rearShade = Field<CabinRearShade?, NoArguments>("rearShade")

    public var rearviewMirror = Field<CabinRearviewMirror?, NoArguments>("rearviewMirror")

    public var seat = Field<CabinSeat?, NoArguments>("seat")

    public var steeringWheel = Field<CabinSteeringWheel?, NoArguments>("steeringWheel")

    public var sunroof = Field<CabinSunroof?, NoArguments>("sunroof")

    public required init() { }
}
