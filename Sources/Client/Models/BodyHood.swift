//
//  BodyHood.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class BodyHood: Object, ObjectSchema {

    /// hood open or closed. True = Open. False = Closed
    public var isOpen = Field<Bool?, NoArguments>("isOpen")

    public required init() { }
}
