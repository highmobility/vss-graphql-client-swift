//
//  CabinHVACRow2.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinHVACRow2: Object, ObjectSchema {

    var `left` = Field<CabinHVACRow2Left?, NoArguments>("left")

    var `right` = Field<CabinHVACRow2Right?, NoArguments>("right")

    public required init() { }
}