//
//  ChassisParkingBrake.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisParkingBrake: Object, ObjectSchema {

    /// Parking brake status. True = Parking Brake is Engaged. False = Parking Brake is not Engaged.
    public var isEngaged = Field<Bool?, NoArguments>("isEngaged")

    public required init() { }
}
