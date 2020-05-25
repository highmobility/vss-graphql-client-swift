//
//  BodyMirrors.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyMirrors: Object, ObjectSchema {

    public var `left` = Field<BodyMirrorsLeft?, NoArguments>("left")

    public var `right` = Field<BodyMirrorsRight?, NoArguments>("right")

    public required init() { }
}