//
//  CabinLightsRow2.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinLightsRow2: Object, ObjectSchema {

    /// Is light shared across second row on
    public var isSharedOn = Field<Bool?, NoArguments>("isSharedOn")

    public var `left` = Field<CabinLightsRow2Left?, NoArguments>("left")

    public var `right` = Field<CabinLightsRow2Right?, NoArguments>("right")

    public required init() { }
}