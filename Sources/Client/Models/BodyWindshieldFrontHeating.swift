//
//  BodyWindshieldFrontHeating.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyWindshieldFrontHeating: Object, ObjectSchema {

    /// Front windshield heater status. 0 - off, 1 - on
    public var status = Field<Bool?, NoArguments>("status")

    public required init() { }
}