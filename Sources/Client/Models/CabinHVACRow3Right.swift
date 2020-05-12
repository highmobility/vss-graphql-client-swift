//
//  CabinHVACRow3Right.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinHVACRow3Right: Object, ObjectSchema {

    /// Direction of airstream
    public var airDistribution = Field<CabinHVACRow3RightAirDistribution?, NoArguments>("airDistribution")

    /// Fan Speed, 0 = off. 100 = max
    public var fanSpeed = Field<Int?, NoArguments>("fanSpeed")

    /// Temperature
    public var temperature = Field<Int?, NoArguments>("temperature")

    public required init() { }
}
