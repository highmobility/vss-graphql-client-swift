//
//  CabinSeatRow3Pos2SideBolster.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow3Pos2SideBolster: Object, ObjectSchema {

    /// Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
    public var inflation = Field<Int?, NoArguments>("inflation")

    public required init() { }
}
