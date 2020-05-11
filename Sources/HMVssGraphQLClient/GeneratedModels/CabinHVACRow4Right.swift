//
//  CabinHVACRow4Right.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinHVACRow4Right: Object, ObjectSchema {

    /// Direction of airstream
    var airDistribution = Field<CabinHVACRow4RightAirDistribution?, NoArguments>("airDistribution")

    /// Fan Speed, 0 = off. 100 = max
    var fanSpeed = Field<Int?, NoArguments>("fanSpeed")

    /// Temperature
    var temperature = Field<Int?, NoArguments>("temperature")

    public required init() { }
}