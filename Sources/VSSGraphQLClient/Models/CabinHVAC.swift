//
//  CabinHVAC.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinHVAC: GraphQLObjectType {

    /// Ambient air temperature
    public var ambientAirTemperature: Float? = nil

    /// Is Air conditioning active.
    public var isAirConditioningActive: Bool? = nil

    /// Is front defroster active.
    public var isFrontDefrosterActive: Bool? = nil

    /// Is rear defroster active.
    public var isRearDefrosterActive: Bool? = nil

    /// Is recirculation active.
    public var isRecirculationActive: Bool? = nil

    public var row1: CabinHVACRow1? = nil

    public var row2: CabinHVACRow2? = nil

    public var row3: CabinHVACRow3? = nil

    public var row4: CabinHVACRow4? = nil
}