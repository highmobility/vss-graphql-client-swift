//
//  CabinSeatRow2Pos5.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow2Pos5: GraphQLObjectType {

    public var airbag: CabinSeatRow2Pos5Airbag? = nil

    public var cushion: CabinSeatRow2Pos5Cushion? = nil

    /// Does the seat have a passenger in it.
    public var hasPassenger: Bool? = nil

    public var headRestraint: CabinSeatRow2Pos5HeadRestraint? = nil

    /// Seat cooling / heating. 0 = off. -100 = max cold. +100 = max heat
    public var heating: Int? = nil

    /// Is the belt engaged.
    public var isBelted: Bool? = nil

    public var lumbar: CabinSeatRow2Pos5Lumbar? = nil

    /// Seat massage level. 0 = off. 100 = max massage.
    public var massage: Int? = nil

    /// Seat horizontal position. 0 = Frontmost. 1000 = Rearmost
    public var position: Int? = nil

    /// Recline level. -90 = Max forward recline. 90 max backward recline
    public var recline: Int? = nil

    public var sideBolster: CabinSeatRow2Pos5SideBolster? = nil

    public var `switch`: CabinSeatRow2Pos5Switch? = nil
}