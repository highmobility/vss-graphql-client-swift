//
//  BodyTrunk.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 14.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct BodyTrunk: GraphQLType {

    /// Is trunk locked or unlocked. True = Locked. False = Unlocked.
    public var isLocked: Bool? = nil

    /// Trunk open or closed. True = Open. False = Closed
    public var isOpen: Bool? = nil
}