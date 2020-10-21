//
//  CabinSeatRow2Pos2.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow2Pos2: GraphQLObjectType {

    public var airbag: CabinSeatRow2Pos2Airbag? = nil

    public var cushion: CabinSeatRow2Pos2Cushion? = nil

    /// Does the seat have a passenger in it.
    public var hasPassenger: Bool? = nil

    public var headRestraint: CabinSeatRow2Pos2HeadRestraint? = nil

    /// Seat cooling / heating. 0 = off. -100 = max cold. +100 = max heat
    public var heating: Int? = nil

    /// Is the belt engaged.
    public var isBelted: Bool? = nil

    public var lumbar: CabinSeatRow2Pos2Lumbar? = nil

    /// Seat massage level. 0 = off. 100 = max massage.
    public var massage: Int? = nil

    /// Seat horizontal position. 0 = Frontmost. 1000 = Rearmost
    public var position: Int? = nil

    /// Recline level. -90 = Max forward recline. 90 max backward recline
    public var recline: Int? = nil

    public var sideBolster: CabinSeatRow2Pos2SideBolster? = nil

    public var `switch`: CabinSeatRow2Pos2Switch? = nil


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
            "airbag" : CabinSeatRow2Pos2Airbag.self,
            "cushion" : CabinSeatRow2Pos2Cushion.self,
            "headRestraint" : CabinSeatRow2Pos2HeadRestraint.self,
            "lumbar" : CabinSeatRow2Pos2Lumbar.self,
            "sideBolster" : CabinSeatRow2Pos2SideBolster.self,
            "`switch`" : CabinSeatRow2Pos2Switch.self
        ]
    }
}