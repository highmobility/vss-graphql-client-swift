//
//  CabinSeatRow2Pos4SwitchMassage.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow2Pos4SwitchMassage: Object, ObjectSchema {

    /// Decrease massage level switch engaged
    public var decrease = Field<Bool?, NoArguments>("decrease")

    /// Increase massage level switch engaged
    public var increase = Field<Bool?, NoArguments>("increase")

    public required init() { }
}