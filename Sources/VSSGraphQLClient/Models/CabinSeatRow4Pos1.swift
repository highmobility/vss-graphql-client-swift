//
//  CabinSeatRow4Pos1.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow4Pos1: GraphQLObjectType {

    public var airbag: CabinSeatRow4Pos1Airbag? = nil

    public var cushion: CabinSeatRow4Pos1Cushion? = nil

    /// Does the seat have a passenger in it.
    public var hasPassenger: Bool? = nil

    public var headRestraint: CabinSeatRow4Pos1HeadRestraint? = nil

    /// Seat cooling / heating. 0 = off. -100 = max cold. +100 = max heat
    public var heating: Int? = nil

    /// Is the belt engaged.
    public var isBelted: Bool? = nil

    public var lumbar: CabinSeatRow4Pos1Lumbar? = nil

    /// Seat massage level. 0 = off. 100 = max massage.
    public var massage: Int? = nil

    /// Seat horizontal position. 0 = Frontmost. 1000 = Rearmost
    public var position: Int? = nil

    /// Recline level. -90 = Max forward recline. 90 max backward recline
    public var recline: Int? = nil

    public var sideBolster: CabinSeatRow4Pos1SideBolster? = nil

    public var `switch`: CabinSeatRow4Pos1Switch? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "hasPassenger" : Bool.self,
            "heating" : Int.self,
            "isBelted" : Bool.self,
            "massage" : Int.self,
            "position" : Int.self,
            "recline" : Int.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "airbag" : CabinSeatRow4Pos1Airbag.self,
            "cushion" : CabinSeatRow4Pos1Cushion.self,
            "headRestraint" : CabinSeatRow4Pos1HeadRestraint.self,
            "lumbar" : CabinSeatRow4Pos1Lumbar.self,
            "sideBolster" : CabinSeatRow4Pos1SideBolster.self,
            "`switch`" : CabinSeatRow4Pos1Switch.self
        ]
    }
}