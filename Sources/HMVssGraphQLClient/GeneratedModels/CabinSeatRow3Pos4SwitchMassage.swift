//
//  CabinSeatRow3Pos4SwitchMassage.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow3Pos4SwitchMassage: Object, ObjectSchema {

    /// Decrease massage level switch engaged
    var decrease = Field<Bool?, NoArguments>("decrease")

    /// Increase massage level switch engaged
    var increase = Field<Bool?, NoArguments>("increase")

    public required init() { }
}