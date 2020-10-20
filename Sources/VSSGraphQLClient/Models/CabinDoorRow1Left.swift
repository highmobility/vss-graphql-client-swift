//
//  CabinDoorRow1Left.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinDoorRow1Left: GraphQLObjectType {

    /// Is door child lock engaged. True = Engaged. False = Disengaged.
    public var isChildLockActive: Bool? = nil

    /// Is door locked or unlocked. True = Locked. False = Unlocked.
    public var isLocked: Bool? = nil

    /// Is door open or closed
    public var isOpen: Bool? = nil

    public var shade: CabinDoorRow1LeftShade? = nil

    public var window: CabinDoorRow1LeftWindow? = nil
}