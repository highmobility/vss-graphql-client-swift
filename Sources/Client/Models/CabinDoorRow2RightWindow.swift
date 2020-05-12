//
//  CabinDoorRow2RightWindow.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinDoorRow2RightWindow: Object, ObjectSchema {

    /// Window position. 0 = Fully closed 100 = Fully opened.
    public var position = Field<Int?, NoArguments>("position")

    /// Switch controlling sliding action such as window, sunroof, or blind.
    public var `switch` = Field<CabinDoorRow2RightWindowSwitch?, NoArguments>("switch")

    public required init() { }
}