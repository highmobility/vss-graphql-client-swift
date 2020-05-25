//
//  CabinLightsRow4.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinLightsRow4: Object, ObjectSchema {

    /// Is light shared across fourth row on
    public var isSharedOn = Field<Bool?, NoArguments>("isSharedOn")

    public var `left` = Field<CabinLightsRow4Left?, NoArguments>("left")

    public var `right` = Field<CabinLightsRow4Right?, NoArguments>("right")

    public required init() { }
}