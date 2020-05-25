//
//  OBDO2.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2: Object, ObjectSchema {

    public var bank1 = Field<OBDO2Bank1?, NoArguments>("bank1")

    public var bank2 = Field<OBDO2Bank2?, NoArguments>("bank2")

    public required init() { }
}