//
//  BodyHood.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyHood: Object, ObjectSchema {

    /// hood open or closed. True = Open. False = Closed
    public var isOpen = Field<Bool?, NoArguments>("isOpen")

    public required init() { }
}