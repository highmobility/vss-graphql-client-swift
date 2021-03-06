//
//  CabinDoorRow4LeftWindow.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinDoorRow4LeftWindow: GraphQLObjectType {

    /// Window position. 0 = Fully closed 100 = Fully opened.
    public var position: Int? = nil

    /// Switch controlling sliding action such as window, sunroof, or blind.
    public var `switch`: CabinDoorRow4LeftWindowSwitch? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "position" : Int.self,
            "`switch`" : CabinDoorRow4LeftWindowSwitch.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}