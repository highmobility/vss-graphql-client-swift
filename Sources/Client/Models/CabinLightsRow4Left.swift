//
//  CabinLightsRow4Left.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinLightsRow4Left: Object, ObjectSchema {

    /// Is passenger light on
    public var isPassengerOn = Field<Bool?, NoArguments>("isPassengerOn")

    public required init() { }
}