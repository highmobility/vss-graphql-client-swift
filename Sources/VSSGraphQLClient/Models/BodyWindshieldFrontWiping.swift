//
//  BodyWindshieldFrontWiping.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 25.05.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyWindshieldFrontWiping: Object, ObjectSchema {

    /// Front wiper status
    public var status = Field<BodyWindshieldFrontWipingStatus?, NoArguments>("status")

    public required init() { }
}