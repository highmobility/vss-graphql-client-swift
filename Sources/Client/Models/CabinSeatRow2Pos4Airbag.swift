//
//  CabinSeatRow2Pos4Airbag.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinSeatRow2Pos4Airbag: Object, ObjectSchema {

    /// Airbag deployment status. True = Airbag deployed. False = Airbag not deployed.
    public var isDeployed = Field<Bool?, NoArguments>("isDeployed")

    public required init() { }
}
