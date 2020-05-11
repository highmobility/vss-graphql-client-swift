//
//  CabinSeatRow1Pos5SwitchRecline.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow1Pos5SwitchRecline: Object, ObjectSchema {

    /// Seatback recline backward switch engaged
    var backward = Field<Bool?, NoArguments>("backward")

    /// Seatback recline forward switch engaged
    var forward = Field<Bool?, NoArguments>("forward")

    public required init() { }
}