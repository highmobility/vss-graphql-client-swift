//
//  ChassisAccelerator.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class ChassisAccelerator: Object, ObjectSchema {

    /// Accelerator pedal position as percent. 0 = Not depressed. 100 = Fully depressed.
    public var pedalPosition = Field<Int?, NoArguments>("pedalPosition")

    public required init() { }
}