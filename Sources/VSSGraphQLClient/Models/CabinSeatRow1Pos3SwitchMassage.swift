//
//  CabinSeatRow1Pos3SwitchMassage.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow1Pos3SwitchMassage: GraphQLObjectType {

    /// Decrease massage level switch engaged
    public var decrease: Bool? = nil

    /// Increase massage level switch engaged
    public var increase: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "decrease" : Bool.self,
            "increase" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}