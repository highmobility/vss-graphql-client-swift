//
//  OBDStatus.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.09.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBDStatus: Object, ObjectSchema {

    /// Number of sensor Trouble Codes (DTC)
    public var dtcCount = Field<Float?, NoArguments>("dtcCount")

    /// Type of the ignition for ICE - spark = spark plug ignition, compression = self-igniting (Diesel engines)
    public var ignitionType = Field<OBDStatusIgnitionType?, NoArguments>("ignitionType")

    /// Malfunction Indicator Light (MIL) False = Off, True = On
    public var mil = Field<Bool?, NoArguments>("mil")

    public required init() { }
}