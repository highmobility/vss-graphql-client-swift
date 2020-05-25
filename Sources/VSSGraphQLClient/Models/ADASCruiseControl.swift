//
//  ADASCruiseControl.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ADASCruiseControl: Object, ObjectSchema {

    /// Indicates if cruise control system incurred and error condition. True = Error. False = NoError.
    public var error = Field<Bool?, NoArguments>("error")

    /// Indicates if cruise control system is enabled. True = Enabled. False = Disabled.
    public var isActive = Field<Bool?, NoArguments>("isActive")

    /// Set cruise control speed in kilometers per hour
    public var speedSet = Field<Float?, NoArguments>("speedSet")

    public required init() { }
}