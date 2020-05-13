//
//  CabinSeatRow3Pos5SwitchMassage.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 13.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow3Pos5SwitchMassage: Object, ObjectSchema {

    /// Decrease massage level switch engaged
    public var decrease = Field<Bool?, NoArguments>("decrease")

    /// Increase massage level switch engaged
    public var increase = Field<Bool?, NoArguments>("increase")

    public required init() { }
}