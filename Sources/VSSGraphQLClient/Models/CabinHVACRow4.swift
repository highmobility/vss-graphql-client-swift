//
//  CabinHVACRow4.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinHVACRow4: GraphQLObjectType {

    public var `left`: CabinHVACRow4Left? = nil

    public var `right`: CabinHVACRow4Right? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [:]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "`left`" : CabinHVACRow4Left.self,
            "`right`" : CabinHVACRow4Right.self
        ]
    }
}