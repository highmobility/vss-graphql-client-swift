//
//  CabinDoorRow3Left.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinDoorRow3Left: Object, ObjectSchema {

    /// Is door child lock engaged. True = Engaged. False = Disengaged.
    public var isChildLockActive = Field<Bool?, NoArguments>("isChildLockActive")

    /// Is door locked or unlocked. True = Locked. False = Unlocked.
    public var isLocked = Field<Bool?, NoArguments>("isLocked")

    /// Is door open or closed
    public var isOpen = Field<Bool?, NoArguments>("isOpen")

    public var shade = Field<CabinDoorRow3LeftShade?, NoArguments>("shade")

    public var window = Field<CabinDoorRow3LeftWindow?, NoArguments>("window")

    public required init() { }
}