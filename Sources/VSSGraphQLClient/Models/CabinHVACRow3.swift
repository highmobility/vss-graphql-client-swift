//
//  CabinHVACRow3.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinHVACRow3: Object, ObjectSchema {

    public var `left` = Field<CabinHVACRow3Left?, NoArguments>("left")

    public var `right` = Field<CabinHVACRow3Right?, NoArguments>("right")

    public required init() { }
}