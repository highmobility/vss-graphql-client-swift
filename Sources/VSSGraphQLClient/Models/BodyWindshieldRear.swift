//
//  BodyWindshieldRear.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyWindshieldRear: Object, ObjectSchema {

    public var heating = Field<BodyWindshieldRearHeating?, NoArguments>("heating")

    public var washerFluid = Field<BodyWindshieldRearWasherFluid?, NoArguments>("washerFluid")

    public var wiping = Field<BodyWindshieldRearWiping?, NoArguments>("wiping")

    public required init() { }
}