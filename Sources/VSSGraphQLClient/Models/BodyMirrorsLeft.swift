//
//  BodyMirrorsLeft.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct BodyMirrorsLeft: GraphQLObjectType {

    public var heating: BodyMirrorsLeftHeating? = nil

    /// Mirror pan as a percent. 0 = Center Position. 100 = Fully Left Position. -100 = Fully Right Position.
    public var pan: Int? = nil

    /// Mirror tilt as a percent. 0 = Center Position. 100 = Fully Upward Position. -100 = Fully Downward Position.
    public var tilt: Int? = nil
}