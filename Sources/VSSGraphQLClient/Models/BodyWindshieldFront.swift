//
//  BodyWindshieldFront.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyWindshieldFront: Object, ObjectSchema {

    public var heating = Field<BodyWindshieldFrontHeating?, NoArguments>("heating")

    public var washerFluid = Field<BodyWindshieldFrontWasherFluid?, NoArguments>("washerFluid")

    public var wiping = Field<BodyWindshieldFrontWiping?, NoArguments>("wiping")

    public required init() { }
}