//
//  CabinLightsRow1.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinLightsRow1: Object, ObjectSchema {

    /// Is light shared across first row on
    public var isSharedOn = Field<Bool?, NoArguments>("isSharedOn")

    public var `left` = Field<CabinLightsRow1Left?, NoArguments>("left")

    public var `right` = Field<CabinLightsRow1Right?, NoArguments>("right")

    public required init() { }
}