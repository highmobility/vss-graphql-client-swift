//
//  CabinConvertible.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinConvertible: Object, ObjectSchema {

    /// Roof status on convertible vehicles
    public var status = Field<CabinConvertibleStatus?, NoArguments>("status")

    public required init() { }
}