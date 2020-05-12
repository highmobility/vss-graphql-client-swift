//
//  BodyWindshieldRearHeating.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyWindshieldRearHeating: Object, ObjectSchema {

    /// Rear windshield heater status. 0 - off, 1 - on
    public var status = Field<Bool?, NoArguments>("status")

    public required init() { }
}
