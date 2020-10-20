//
//  CabinSeatRow2Pos1Cushion.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow2Pos1Cushion: GraphQLObjectType {

    /// Height of the seat front. 0 = Lowermost. 500 = Uppermost.
    public var height: Int? = nil

    /// Forward length of cushion (leg support). 0 = Rearmost. 500 = Forwardmost.
    public var length: Int? = nil
}