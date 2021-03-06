//
//  ADASObstacleDetection.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct ADASObstacleDetection: GraphQLObjectType {

    public var distanceToObject: ADASObstacleDetectionDistanceToObject? = nil

    /// Indicates if obstacle sensor system incurred an error condition. True = Error. False = No Error.
    public var error: Bool? = nil

    /// Indicates if obstacle sensor system is enabled. True = Enabled. False = Disabled.
    public var isActive: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "error" : Bool.self,
            "isActive" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "distanceToObject" : ADASObstacleDetectionDistanceToObject.self
        ]
    }
}