//
//  CabinSeatRow4Pos4SwitchCushion.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinSeatRow4Pos4SwitchCushion: GraphQLObjectType {

    /// Seat cushion backward/shorten switch engaged
    public var backward: Bool? = nil

    /// Seat cushion down switch engaged
    public var down: Bool? = nil

    /// Seat cushion forward/lengthen switch engaged
    public var forward: Bool? = nil

    /// Seat cushion up switch engaged
    public var up: Bool? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "backward" : Bool.self,
            "down" : Bool.self,
            "forward" : Bool.self,
            "up" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}