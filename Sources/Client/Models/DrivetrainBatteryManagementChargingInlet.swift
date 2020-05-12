//
//  DrivetrainBatteryManagementChargingInlet.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public enum DrivetrainBatteryManagementChargingInlet: String, Enum {

    case unknown = "unknown"

    case NotFitted = "Not_Fitted"

    case ACType1 = "AC_Type_1"

    case ACType2 = "AC_Type_2"

    case ACGbt = "AC_GBT"

    case ACDcType1Combo = "AC_DC_Type_1_Combo"

    case ACDcType2Combo = "AC_DC_Type_2_Combo"

    case DCGbt = "DC_GBT"

    case DCChademo = "DC_Chademo"
}