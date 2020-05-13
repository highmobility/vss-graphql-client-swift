//
//  CabinSeatRow1Pos1Cushion.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow1Pos1Cushion: Object, ObjectSchema {

    /// Height of the seat front. 0 = Lowermost. 500 = Uppermost.
    public var height = Field<Int?, NoArguments>("height")

    /// Forward length of cushion (leg support). 0 = Rearmost. 500 = Forwardmost.
    public var length = Field<Int?, NoArguments>("length")

    public required init() { }
}