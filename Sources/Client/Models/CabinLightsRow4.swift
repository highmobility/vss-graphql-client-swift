//
//  CabinLightsRow4.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinLightsRow4: Object, ObjectSchema {

    /// Is light shared across fourth row on
    public var isSharedOn = Field<Bool?, NoArguments>("isSharedOn")

    var `left` = Field<CabinLightsRow4Left?, NoArguments>("left")

    var `right` = Field<CabinLightsRow4Right?, NoArguments>("right")

    public required init() { }
}