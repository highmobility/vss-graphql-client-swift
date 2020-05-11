//
//  CabinDoorRow4.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinDoorRow4: Object, ObjectSchema {

    var left = Field<CabinDoorRow4Left?, NoArguments>("left")

    var right = Field<CabinDoorRow4Right?, NoArguments>("right")

    public required init() { }
}