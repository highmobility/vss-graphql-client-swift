//
//  CabinSeatRow4Pos2Lumbar.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow4Pos2Lumbar: Object, ObjectSchema {

    /// Lumbar support position. 0 = Lowermost. 255 = Uppermost.
    public var height = Field<Int?, NoArguments>("height")

    /// Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
    public var inflation = Field<Int?, NoArguments>("inflation")

    public required init() { }
}