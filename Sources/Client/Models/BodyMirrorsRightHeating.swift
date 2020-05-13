//
//  BodyMirrorsRightHeating.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyMirrorsRightHeating: Object, ObjectSchema {

    /// Mirror Heater on or off. True = Heater On. False = Heater Off.
    public var status = Field<Bool?, NoArguments>("status")

    public required init() { }
}