//
//  CabinLightsRow4Left.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinLightsRow4Left: Object, ObjectSchema {

    /// Is passenger light on
    public var isPassengerOn = Field<Bool?, NoArguments>("isPassengerOn")

    public required init() { }
}
