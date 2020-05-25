//
//  BodyHorn.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyHorn: Object, ObjectSchema {

    /// Horn active or inactive. True = Active. False = Inactive.
    public var isActive = Field<Bool?, NoArguments>("isActive")

    public required init() { }
}