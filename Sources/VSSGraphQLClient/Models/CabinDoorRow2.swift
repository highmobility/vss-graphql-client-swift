//
//  CabinDoorRow2.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinDoorRow2: Object, ObjectSchema {

    public var `left` = Field<CabinDoorRow2Left?, NoArguments>("left")

    public var `right` = Field<CabinDoorRow2Right?, NoArguments>("right")

    public required init() { }
}