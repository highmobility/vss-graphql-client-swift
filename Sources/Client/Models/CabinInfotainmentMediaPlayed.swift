//
//  CabinInfotainmentMediaPlayed.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinInfotainmentMediaPlayed: Object, ObjectSchema {

    /// Name of album being played
    public var album = Field<String?, NoArguments>("album")

    /// Name of artist being played
    public var artist = Field<String?, NoArguments>("artist")

    /// Media selected for playback
    public var source = Field<CabinInfotainmentMediaPlayedSource?, NoArguments>("source")

    /// Name of track being played
    public var track = Field<String?, NoArguments>("track")

    /// User Resource associated with the media
    public var uri = Field<String?, NoArguments>("uri")

    public required init() { }
}