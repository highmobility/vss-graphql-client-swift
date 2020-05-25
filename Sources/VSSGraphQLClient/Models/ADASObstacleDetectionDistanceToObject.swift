//
//  ADASObstacleDetectionDistanceToObject.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ADASObstacleDetectionDistanceToObject: Object, ObjectSchema {

    /// Front left distance to object in meters
    public var frontLeft = Field<Int?, NoArguments>("frontLeft")

    /// Front right distance to object in meters
    public var frontRight = Field<Int?, NoArguments>("frontRight")

    /// Rear left distance to object in meters
    public var rearLeft = Field<Int?, NoArguments>("rearLeft")

    /// Rear right distance to object in meters
    public var rearRight = Field<Int?, NoArguments>("rearRight")

    public required init() { }
}