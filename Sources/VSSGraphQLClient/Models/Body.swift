//
//  Body.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class Body: Object, ObjectSchema {

    /// Body type code as defined by ISO 3779
    public var bodyType = Field<String?, NoArguments>("bodyType")

    public var hood = Field<BodyHood?, NoArguments>("hood")

    public var horn = Field<BodyHorn?, NoArguments>("horn")

    public var lights = Field<BodyLights?, NoArguments>("lights")

    public var mirrors = Field<BodyMirrors?, NoArguments>("mirrors")

    public var raindetection = Field<BodyRaindetection?, NoArguments>("raindetection")

    /// Location of the fuel cap or charge port
    public var refuelPosition = Field<BodyRefuelPosition?, NoArguments>("refuelPosition")

    public var trunk = Field<BodyTrunk?, NoArguments>("trunk")

    public var windshield = Field<BodyWindshield?, NoArguments>("windshield")

    public required init() { }
}