//
//  CabinSeatRow4Pos4SideBolster.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow4Pos4SideBolster: Object, ObjectSchema {

    /// Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
    var inflation = Field<Int?, NoArguments>("inflation")

    public required init() { }
}