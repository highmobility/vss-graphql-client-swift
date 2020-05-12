//
//  AngularVelocity.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class AngularVelocity: Object, ObjectSchema {

    /// Vehicle rotation rate along Y (lateral).
    public var pitch = Field<Int?, NoArguments>("pitch")

    /// Vehicle rotation rate along X (longitudinal).
    public var roll = Field<Int?, NoArguments>("roll")

    /// Vehicle rotation rate along Z (vertical).
    public var yaw = Field<Int?, NoArguments>("yaw")

    public required init() { }
}