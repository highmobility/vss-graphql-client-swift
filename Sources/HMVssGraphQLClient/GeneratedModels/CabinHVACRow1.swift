//
//  CabinHVACRow1.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinHVACRow1: Object, ObjectSchema {

    var left = Field<CabinHVACRow1Left?, NoArguments>("left")

    var right = Field<CabinHVACRow1Right?, NoArguments>("right")

    public required init() { }
}