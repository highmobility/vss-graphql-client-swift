//
//  BodyMirrorsLeft.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyMirrorsLeft: Object, ObjectSchema {

    public var heating = Field<BodyMirrorsLeftHeating?, NoArguments>("heating")

    /// Mirror pan as a percent. 0 = Center Position. 100 = Fully Left Position. -100 = Fully Right Position.
    public var pan = Field<Int?, NoArguments>("pan")

    /// Mirror tilt as a percent. 0 = Center Position. 100 = Fully Upward Position. -100 = Fully Downward Position.
    public var tilt = Field<Int?, NoArguments>("tilt")

    public required init() { }
}