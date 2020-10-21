//
//  CabinSeatRow1Pos2HeadRestraint.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow1Pos2HeadRestraint: GraphQLObjectType {

    /// Height of head restraint. 0 = Bottommost. 255 = Topmost.
    public var height: Int? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "height" : Int.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}