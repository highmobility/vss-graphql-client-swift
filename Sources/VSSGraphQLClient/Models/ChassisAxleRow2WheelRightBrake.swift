//
//  ChassisAxleRow2WheelRightBrake.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 14.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct ChassisAxleRow2WheelRightBrake: GraphQLType {

    /// Brake pad wear status. True = Worn. False = Not Worn.
    public var brakesWorn: Bool? = nil

    /// Brake fluid level as percent. 0 = Empty. 100 = Full.
    public var fluidLevel: Int? = nil

    /// Brake fluid level status. True = Brake fluid level low. False = Brake fluid level OK.
    public var fluidLevelLow: Bool? = nil

    /// Brake pad wear as percent. 0 = No Wear. 100 = Worn.
    public var padWear: Int? = nil
}