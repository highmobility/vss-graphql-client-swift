//
//  OBDO2Bank2.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDO2Bank2: Object, ObjectSchema {

    public var sensor1 = Field<OBDO2Bank2Sensor1?, NoArguments>("sensor1")

    public var sensor2 = Field<OBDO2Bank2Sensor2?, NoArguments>("sensor2")

    public var sensor3 = Field<OBDO2Bank2Sensor3?, NoArguments>("sensor3")

    public var sensor4 = Field<OBDO2Bank2Sensor4?, NoArguments>("sensor4")

    public required init() { }
}
