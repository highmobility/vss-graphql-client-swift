//
//  CabinSeatRow2Pos5Airbag.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow2Pos5Airbag: GraphQLObjectType {

    /// Airbag deployment status. True = Airbag deployed. False = Airbag not deployed.
    public var isDeployed: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "isDeployed" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}