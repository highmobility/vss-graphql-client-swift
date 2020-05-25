//
//  ADASABS.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ADASABS: Object, ObjectSchema {

    /// Indicates if ABS incurred an error condition. True = Error. False = No Error.
    public var error = Field<Bool?, NoArguments>("error")

    /// Indicates if ABS is enabled. True = Enabled. False = Disabled.
    public var isActive = Field<Bool?, NoArguments>("isActive")

    /// Indicates if ABS is currently regulating brake pressure. True = Engaged. False = Not Engaged.
    public var isEngaged = Field<Bool?, NoArguments>("isEngaged")

    public required init() { }
}