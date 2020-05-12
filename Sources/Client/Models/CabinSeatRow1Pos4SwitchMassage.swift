//
//  CabinSeatRow1Pos4SwitchMassage.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow1Pos4SwitchMassage: Object, ObjectSchema {

    /// Decrease massage level switch engaged
    public var decrease = Field<Bool?, NoArguments>("decrease")

    /// Increase massage level switch engaged
    public var increase = Field<Bool?, NoArguments>("increase")

    public required init() { }
}
