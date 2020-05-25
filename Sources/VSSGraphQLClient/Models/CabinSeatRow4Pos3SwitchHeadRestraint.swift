//
//  CabinSeatRow4Pos3SwitchHeadRestraint.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow4Pos3SwitchHeadRestraint: Object, ObjectSchema {

    /// Head restraint down switch engaged
    public var down = Field<Bool?, NoArguments>("down")

    /// Head restraint up switch engaged
    public var up = Field<Bool?, NoArguments>("up")

    public required init() { }
}