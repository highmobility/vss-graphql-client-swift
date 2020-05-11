//
//  CabinSeatRow3Pos2SwitchCushion.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow3Pos2SwitchCushion: Object, ObjectSchema {

    /// Seat cushion backward/shorten switch engaged
    var backward = Field<Bool?, NoArguments>("backward")

    /// Seat cushion down switch engaged
    var down = Field<Bool?, NoArguments>("down")

    /// Seat cushion forward/lengthen switch engaged
    var forward = Field<Bool?, NoArguments>("forward")

    /// Seat cushion up switch engaged
    var up = Field<Bool?, NoArguments>("up")

    public required init() { }
}