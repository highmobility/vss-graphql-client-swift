//
//  BodyMirrors.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyMirrors: Object, ObjectSchema {

    var left = Field<BodyMirrorsLeft?, NoArguments>("left")

    var right = Field<BodyMirrorsRight?, NoArguments>("right")

    public required init() { }
}