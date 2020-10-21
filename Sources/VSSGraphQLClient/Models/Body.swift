//
//  Body.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct Body: GraphQLObjectType {

    /// Body type code as defined by ISO 3779
    public var bodyType: String? = nil

    public var hood: BodyHood? = nil

    public var horn: BodyHorn? = nil

    public var lights: BodyLights? = nil

    public var mirrors: BodyMirrors? = nil

    public var raindetection: BodyRaindetection? = nil

    /// Location of the fuel cap or charge port
    public var refuelPosition: BodyRefuelPosition? = nil

    public var trunk: BodyTrunk? = nil

    public var windshield: BodyWindshield? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "bodyType" : String.self,
            "refuelPosition" : BodyRefuelPosition.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "hood" : BodyHood.self,
            "horn" : BodyHorn.self,
            "lights" : BodyLights.self,
            "mirrors" : BodyMirrors.self,
            "raindetection" : BodyRaindetection.self,
            "trunk" : BodyTrunk.self,
            "windshield" : BodyWindshield.self
        ]
    }
}