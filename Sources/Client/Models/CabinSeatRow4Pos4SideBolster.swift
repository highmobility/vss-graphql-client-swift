//
//  CabinSeatRow4Pos4SideBolster.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow4Pos4SideBolster: Object, ObjectSchema {

    /// Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
    public var inflation = Field<Int?, NoArguments>("inflation")

    public required init() { }
}