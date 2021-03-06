//
//  DrivetrainInternalCombustionEngine.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct DrivetrainInternalCombustionEngine: GraphQLObjectType {

    /// Engine configuration.
    public var configuration: DrivetrainInternalCombustionEngineConfiguration? = nil

    /// Displacement in cubic centimetres.
    public var displacement: Int? = nil

    public var engine: DrivetrainInternalCombustionEngineEngine? = nil

    /// Type of fuel that the engine runs on.
    public var fuelType: DrivetrainInternalCombustionEngineFuelType? = nil

    /// Peak power, in kilowatts, that engine can generate.
    public var maxPower: Int? = nil

    /// Peak power, in newton meter, that the engine can generate.
    public var maxTorque: Int? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "configuration" : DrivetrainInternalCombustionEngineConfiguration.self,
            "displacement" : Int.self,
            "fuelType" : DrivetrainInternalCombustionEngineFuelType.self,
            "maxPower" : Int.self,
            "maxTorque" : Int.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "engine" : DrivetrainInternalCombustionEngineEngine.self
        ]
    }
}