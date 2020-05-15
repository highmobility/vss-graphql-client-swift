//
//  CabinSeatRow4Pos4SwitchRecline.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow4Pos4SwitchRecline: Object, ObjectSchema {

    /// Seatback recline backward switch engaged
    public var backward = Field<Bool?, NoArguments>("backward")

    /// Seatback recline forward switch engaged
    public var forward = Field<Bool?, NoArguments>("forward")

    public required init() { }
}