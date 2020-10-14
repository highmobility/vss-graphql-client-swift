//
//  ChassisAxle.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 14.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct ChassisAxle: GraphQLType {

    /// Number of axles on the vehicle
    public var count: Int? = nil

    public var row1: ChassisAxleRow1? = nil

    public var row2: ChassisAxleRow2? = nil
}