//
//  CabinDoorRow4RightWindow.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinDoorRow4RightWindow: GraphQLObjectType {

    /// Window position. 0 = Fully closed 100 = Fully opened.
    public var position: Int? = nil

    /// Switch controlling sliding action such as window, sunroof, or blind.
    public var `switch`: CabinDoorRow4RightWindowSwitch? = nil
}