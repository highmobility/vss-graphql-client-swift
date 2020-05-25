//
//  BodyLights.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyLights: Object, ObjectSchema {

    /// Is backup (reverse) light on
    public var isBackupOn = Field<Bool?, NoArguments>("isBackupOn")

    /// Is brake light on
    public var isBrakeOn = Field<Bool?, NoArguments>("isBrakeOn")

    /// Is front fog light on
    public var isFrontFogOn = Field<Bool?, NoArguments>("isFrontFogOn")

    /// Are hazards on
    public var isHazardOn = Field<Bool?, NoArguments>("isHazardOn")

    /// Is high beam on
    public var isHighBeamOn = Field<Bool?, NoArguments>("isHighBeamOn")

    /// Is left indicator flashing
    public var isLeftIndicatorOn = Field<Bool?, NoArguments>("isLeftIndicatorOn")

    /// Is low beam on
    public var isLowBeamOn = Field<Bool?, NoArguments>("isLowBeamOn")

    /// Is parking light on
    public var isParkingOn = Field<Bool?, NoArguments>("isParkingOn")

    /// Is rear fog light on
    public var isRearFogOn = Field<Bool?, NoArguments>("isRearFogOn")

    /// Is right indicator flashing
    public var isRightIndicatorOn = Field<Bool?, NoArguments>("isRightIndicatorOn")

    /// Are running lights on
    public var isRunningOn = Field<Bool?, NoArguments>("isRunningOn")

    public required init() { }
}