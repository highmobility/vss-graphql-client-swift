//
//  CabinSeatRow3Pos4SwitchHeadRestraint.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow3Pos4SwitchHeadRestraint: Object, ObjectSchema {

    /// Head restraint down switch engaged
    public var down = Field<Bool?, NoArguments>("down")

    /// Head restraint up switch engaged
    public var up = Field<Bool?, NoArguments>("up")

    public required init() { }
}