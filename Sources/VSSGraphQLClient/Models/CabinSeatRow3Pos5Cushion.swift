//
//  CabinSeatRow3Pos5Cushion.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 14.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow3Pos5Cushion: GraphQLType {

    /// Height of the seat front. 0 = Lowermost. 500 = Uppermost.
    public var height: Int? = nil

    /// Forward length of cushion (leg support). 0 = Rearmost. 500 = Forwardmost.
    public var length: Int? = nil
}