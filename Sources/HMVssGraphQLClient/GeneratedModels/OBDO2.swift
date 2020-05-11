//
//  OBDO2.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2: Object, ObjectSchema {

    var bank1 = Field<OBDO2Bank1?, NoArguments>("bank1")

    var bank2 = Field<OBDO2Bank2?, NoArguments>("bank2")

    public required init() { }
}