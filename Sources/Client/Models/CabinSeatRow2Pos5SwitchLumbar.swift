//
//  CabinSeatRow2Pos5SwitchLumbar.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow2Pos5SwitchLumbar: Object, ObjectSchema {

    /// Lumbar deflation switch engaged
    public var deflate = Field<Bool?, NoArguments>("deflate")

    /// Lumbar down switch engaged
    public var down = Field<Bool?, NoArguments>("down")

    /// Lumbar inflation switch engaged
    public var inflate = Field<Bool?, NoArguments>("inflate")

    /// Lumbar up switch engaged
    public var up = Field<Bool?, NoArguments>("up")

    public required init() { }
}
