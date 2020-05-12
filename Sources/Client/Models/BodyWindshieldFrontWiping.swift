//
//  BodyWindshieldFrontWiping.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyWindshieldFrontWiping: Object, ObjectSchema {

    /// Front wiper status
    public var status = Field<BodyWindshieldFrontWipingStatus?, NoArguments>("status")

    public required init() { }
}
