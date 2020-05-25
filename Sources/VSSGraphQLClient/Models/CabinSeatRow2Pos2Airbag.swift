//
//  CabinSeatRow2Pos2Airbag.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 15.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow2Pos2Airbag: Object, ObjectSchema {

    /// Airbag deployment status. True = Airbag deployed. False = Airbag not deployed.
    public var isDeployed = Field<Bool?, NoArguments>("isDeployed")

    public required init() { }
}