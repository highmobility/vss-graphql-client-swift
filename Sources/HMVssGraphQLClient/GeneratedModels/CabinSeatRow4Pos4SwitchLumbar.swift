//
//  CabinSeatRow4Pos4SwitchLumbar.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow4Pos4SwitchLumbar: Object, ObjectSchema {

    /// Lumbar deflation switch engaged
    var deflate = Field<Bool?, NoArguments>("deflate")

    /// Lumbar down switch engaged
    var down = Field<Bool?, NoArguments>("down")

    /// Lumbar inflation switch engaged
    var inflate = Field<Bool?, NoArguments>("inflate")

    /// Lumbar up switch engaged
    var up = Field<Bool?, NoArguments>("up")

    public required init() { }
}