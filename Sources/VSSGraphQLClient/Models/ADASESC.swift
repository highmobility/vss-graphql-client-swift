//
//  ADASESC.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct ADASESC: GraphQLObjectType {

    /// Indicates if ESC incurred an error condition. True = Error. False = No Error.
    public var error: Bool? = nil

    /// Indicates if ECS is enabled. True = Enabled. False = Disabled.
    public var isActive: Bool? = nil

    /// Indicates if ESC is currently regulating vehicle stability. True = Engaged. False = Not Engaged.
    public var isEngaged: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "error" : Bool.self,
            "isActive" : Bool.self,
            "isEngaged" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}