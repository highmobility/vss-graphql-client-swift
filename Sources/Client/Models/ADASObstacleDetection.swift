//
//  ADASObstacleDetection.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ADASObstacleDetection: Object, ObjectSchema {

    public var distanceToObject = Field<ADASObstacleDetectionDistanceToObject?, NoArguments>("distanceToObject")

    /// Indicates if obstacle sensor system incurred an error condition. True = Error. False = No Error.
    public var error = Field<Bool?, NoArguments>("error")

    /// Indicates if obstacle sensor system is enabled. True = Enabled. False = Disabled.
    public var isActive = Field<Bool?, NoArguments>("isActive")

    public required init() { }
}