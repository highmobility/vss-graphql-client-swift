//
//  CabinDoorRow4LeftWindow.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinDoorRow4LeftWindow: Object, ObjectSchema {

    /// Window position. 0 = Fully closed 100 = Fully opened.
    var position = Field<Int?, NoArguments>("position")

    /// Switch controlling sliding action such as window, sunroof, or blind.
    var `switch` = Field<CabinDoorRow4LeftWindowSwitch?, NoArguments>("switch")

    public required init() { }
}