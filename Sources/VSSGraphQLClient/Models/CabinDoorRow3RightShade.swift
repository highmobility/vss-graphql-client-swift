//
//  CabinDoorRow3RightShade.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinDoorRow3RightShade: GraphQLObjectType {

    /// Position of side window blind. 0 = Fully retracted. 100 = Fully deployed.
    public var position: Int? = nil

    /// Switch controlling sliding action such as window, sunroof, or blind.
    public var `switch`: CabinDoorRow3RightShadeSwitch? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "position" : Int.self,
            "`switch`" : CabinDoorRow3RightShadeSwitch.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [:]
    }
}