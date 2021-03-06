//
//  CabinDoorRow4.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinDoorRow4: GraphQLObjectType {

    public var `left`: CabinDoorRow4Left? = nil

    public var `right`: CabinDoorRow4Right? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [:]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "`left`" : CabinDoorRow4Left.self,
            "`right`" : CabinDoorRow4Right.self
        ]
    }
}