//
//  CabinSeatRow2Pos4Lumbar.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 14.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow2Pos4Lumbar: GraphQLType {

    /// Lumbar support position. 0 = Lowermost. 255 = Uppermost.
    public var height: Int? = nil

    /// Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
    public var inflation: Int? = nil
}