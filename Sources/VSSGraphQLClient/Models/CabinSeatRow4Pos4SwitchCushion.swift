//
//  CabinSeatRow4Pos4SwitchCushion.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow4Pos4SwitchCushion: Object, ObjectSchema {

    /// Seat cushion backward/shorten switch engaged
    public var backward = Field<Bool?, NoArguments>("backward")

    /// Seat cushion down switch engaged
    public var down = Field<Bool?, NoArguments>("down")

    /// Seat cushion forward/lengthen switch engaged
    public var forward = Field<Bool?, NoArguments>("forward")

    /// Seat cushion up switch engaged
    public var up = Field<Bool?, NoArguments>("up")

    public required init() { }
}