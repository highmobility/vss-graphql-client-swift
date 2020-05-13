//
//  CabinHVACRow4.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinHVACRow4: Object, ObjectSchema {

    public var `left` = Field<CabinHVACRow4Left?, NoArguments>("left")

    public var `right` = Field<CabinHVACRow4Right?, NoArguments>("right")

    public required init() { }
}