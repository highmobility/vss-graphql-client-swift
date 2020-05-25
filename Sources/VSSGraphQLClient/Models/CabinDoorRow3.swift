//
//  CabinDoorRow3.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinDoorRow3: Object, ObjectSchema {

    public var `left` = Field<CabinDoorRow3Left?, NoArguments>("left")

    public var `right` = Field<CabinDoorRow3Right?, NoArguments>("right")

    public required init() { }
}