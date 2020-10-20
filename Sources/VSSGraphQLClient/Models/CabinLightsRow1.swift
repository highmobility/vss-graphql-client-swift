//
//  CabinLightsRow1.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinLightsRow1: GraphQLObjectType {

    /// Is light shared across first row on
    public var isSharedOn: Bool? = nil

    public var `left`: CabinLightsRow1Left? = nil

    public var `right`: CabinLightsRow1Right? = nil
}