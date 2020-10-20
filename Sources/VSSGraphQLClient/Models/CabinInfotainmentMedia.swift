//
//  CabinInfotainmentMedia.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 21.10.2020.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Foundation


public struct CabinInfotainmentMedia: GraphQLObjectType {

    /// Tells if the media was
    public var action: CabinInfotainmentMediaAction? = nil

    /// URI of suggested media that was declined
    public var declinedURI: String? = nil

    public var played: CabinInfotainmentMediaPlayed? = nil

    /// URI of suggested media that was selected
    public var selectedURI: String? = nil

    /// Current Media Volume
    public var volume: Int? = nil
}