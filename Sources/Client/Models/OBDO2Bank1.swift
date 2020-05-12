//
//  OBDO2Bank1.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2Bank1: Object, ObjectSchema {

    public var sensor1 = Field<OBDO2Bank1Sensor1?, NoArguments>("sensor1")

    public var sensor2 = Field<OBDO2Bank1Sensor2?, NoArguments>("sensor2")

    public var sensor3 = Field<OBDO2Bank1Sensor3?, NoArguments>("sensor3")

    public var sensor4 = Field<OBDO2Bank1Sensor4?, NoArguments>("sensor4")

    public required init() { }
}