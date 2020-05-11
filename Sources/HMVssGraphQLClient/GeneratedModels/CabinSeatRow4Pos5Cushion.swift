//
//  CabinSeatRow4Pos5Cushion.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow4Pos5Cushion: Object, ObjectSchema {

    /// Height of the seat front. 0 = Lowermost. 500 = Uppermost.
    var height = Field<Int?, NoArguments>("height")

    /// Forward length of cushion (leg support). 0 = Rearmost. 500 = Forwardmost.
    var length = Field<Int?, NoArguments>("length")

    public required init() { }
}