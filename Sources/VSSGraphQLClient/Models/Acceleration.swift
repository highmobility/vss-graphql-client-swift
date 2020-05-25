//
//  Acceleration.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class Acceleration: Object, ObjectSchema {

    /// Vehicle acceleration in Y (lateral acceleration).
    public var lateral = Field<Float?, NoArguments>("lateral")

    /// Vehicle acceleration in X (longitudinal acceleration).
    public var longitudinal = Field<Float?, NoArguments>("longitudinal")

    /// Vehicle acceleration in Z (vertical acceleration).
    public var vertical = Field<Float?, NoArguments>("vertical")

    public required init() { }
}