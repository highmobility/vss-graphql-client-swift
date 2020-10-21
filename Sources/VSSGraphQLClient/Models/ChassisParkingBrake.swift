//
//  ChassisParkingBrake.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct ChassisParkingBrake: GraphQLObjectType {

    /// Parking brake status. True = Parking Brake is Engaged. False = Parking Brake is not Engaged.
    public var isEngaged: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "isEngaged" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}