//
//  CabinLightsRow4.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinLightsRow4: GraphQLObjectType {

    /// Is light shared across fourth row on
    public var isSharedOn: Bool? = nil

    public var `left`: CabinLightsRow4Left? = nil

    public var `right`: CabinLightsRow4Right? = nil
}