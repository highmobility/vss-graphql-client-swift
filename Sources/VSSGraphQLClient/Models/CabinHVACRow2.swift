//
//  CabinHVACRow2.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinHVACRow2: GraphQLObjectType {

    public var `left`: CabinHVACRow2Left? = nil

    public var `right`: CabinHVACRow2Right? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [:]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "`left`" : CabinHVACRow2Left.self,
            "`right`" : CabinHVACRow2Right.self
        ]
    }
}