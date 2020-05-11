//
//  CabinSunroof.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSunroof: Object, ObjectSchema {

    /// Sunroof position. 0 = Fully closed 100 = Fully opened. -100 = Fully tilted
    var position = Field<Int?, NoArguments>("position")

    var shade = Field<CabinSunroofShade?, NoArguments>("shade")

    /// Switch controlling sliding action such as window, sunroof, or shade.
    var `switch` = Field<CabinSunroofSwitch?, NoArguments>("switch")

    public required init() { }
}