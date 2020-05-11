//
//  CabinSeatRow3Pos5SwitchHeadRestraint.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow3Pos5SwitchHeadRestraint: Object, ObjectSchema {

    /// Head restraint down switch engaged
    var down = Field<Bool?, NoArguments>("down")

    /// Head restraint up switch engaged
    var up = Field<Bool?, NoArguments>("up")

    public required init() { }
}