//
//  BodyMirrorsRightHeating.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyMirrorsRightHeating: Object, ObjectSchema {

    /// Mirror Heater on or off. True = Heater On. False = Heater Off.
    var status = Field<Bool?, NoArguments>("status")

    public required init() { }
}