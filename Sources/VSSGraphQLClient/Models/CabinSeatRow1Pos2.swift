//
//  CabinSeatRow1Pos2.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 14.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow1Pos2: GraphQLType {

    public var airbag: CabinSeatRow1Pos2Airbag? = nil

    public var cushion: CabinSeatRow1Pos2Cushion? = nil

    /// Does the seat have a passenger in it.
    public var hasPassenger: Bool? = nil

    public var headRestraint: CabinSeatRow1Pos2HeadRestraint? = nil

    /// Seat cooling / heating. 0 = off. -100 = max cold. +100 = max heat
    public var heating: Int? = nil

    /// Is the belt engaged.
    public var isBelted: Bool? = nil

    public var lumbar: CabinSeatRow1Pos2Lumbar? = nil

    /// Seat massage level. 0 = off. 100 = max massage.
    public var massage: Int? = nil

    /// Seat horizontal position. 0 = Frontmost. 1000 = Rearmost
    public var position: Int? = nil

    /// Recline level. -90 = Max forward recline. 90 max backward recline
    public var recline: Int? = nil

    public var sideBolster: CabinSeatRow1Pos2SideBolster? = nil

    public var `switch`: CabinSeatRow1Pos2Switch? = nil
}