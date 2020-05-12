//
//  CabinDoorRow4Right.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinDoorRow4Right: Object, ObjectSchema {

    /// Is door child lock engaged. True = Engaged. False = Disengaged.
    public var isChildLockActive = Field<Bool?, NoArguments>("isChildLockActive")

    /// Is door locked or unlocked. True = Locked. False = Unlocked.
    public var isLocked = Field<Bool?, NoArguments>("isLocked")

    /// Is door open or closed
    public var isOpen = Field<Bool?, NoArguments>("isOpen")

    public var shade = Field<CabinDoorRow4RightShade?, NoArguments>("shade")

    public var window = Field<CabinDoorRow4RightWindow?, NoArguments>("window")

    public required init() { }
}
