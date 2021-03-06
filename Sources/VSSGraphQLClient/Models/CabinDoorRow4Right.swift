//
//  CabinDoorRow4Right.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinDoorRow4Right: GraphQLObjectType {

    /// Is door child lock engaged. True = Engaged. False = Disengaged.
    public var isChildLockActive: Bool? = nil

    /// Is door locked or unlocked. True = Locked. False = Unlocked.
    public var isLocked: Bool? = nil

    /// Is door open or closed
    public var isOpen: Bool? = nil

    public var shade: CabinDoorRow4RightShade? = nil

    public var window: CabinDoorRow4RightWindow? = nil


    // MARK: GraphQLObjectType
    
    public static var scalars: [String : Any] {
        [
            "isChildLockActive" : Bool.self,
            "isLocked" : Bool.self,
            "isOpen" : Bool.self
        ]
    }
    
    public static var objects: [String : GraphQLObjectType.Type] {
        [
            "shade" : CabinDoorRow4RightShade.self,
            "window" : CabinDoorRow4RightWindow.self
        ]
    }
}