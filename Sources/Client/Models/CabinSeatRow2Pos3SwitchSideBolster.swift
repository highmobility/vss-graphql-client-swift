//
//  CabinSeatRow2Pos3SwitchSideBolster.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow2Pos3SwitchSideBolster: Object, ObjectSchema {

    /// Lumbar deflation switch engaged
    public var deflate = Field<Bool?, NoArguments>("deflate")

    /// Lumbar inflation switch engaged
    public var inflate = Field<Bool?, NoArguments>("inflate")

    public required init() { }
}