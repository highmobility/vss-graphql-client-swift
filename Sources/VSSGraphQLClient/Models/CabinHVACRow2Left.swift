//
//  CabinHVACRow2Left.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinHVACRow2Left: Object, ObjectSchema {

    /// Direction of airstream
    public var airDistribution = Field<CabinHVACRow2LeftAirDistribution?, NoArguments>("airDistribution")

    /// Fan Speed, 0 = off. 100 = max
    public var fanSpeed = Field<Int?, NoArguments>("fanSpeed")

    /// Temperature
    public var temperature = Field<Int?, NoArguments>("temperature")

    public required init() { }
}