//
//  CabinLightsRow3.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinLightsRow3: Object, ObjectSchema {

    /// Is light shared third across row on
    public var isSharedOn = Field<Bool?, NoArguments>("isSharedOn")

    var `left` = Field<CabinLightsRow3Left?, NoArguments>("left")

    var `right` = Field<CabinLightsRow3Right?, NoArguments>("right")

    public required init() { }
}
