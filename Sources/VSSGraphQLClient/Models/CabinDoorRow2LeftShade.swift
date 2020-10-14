//
//  CabinDoorRow2LeftShade.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 14.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinDoorRow2LeftShade: GraphQLType {

    /// Position of side window blind. 0 = Fully retracted. 100 = Fully deployed.
    public var position: Int? = nil

    /// Switch controlling sliding action such as window, sunroof, or blind.
    public var `switch`: CabinDoorRow2LeftShadeSwitch? = nil
}