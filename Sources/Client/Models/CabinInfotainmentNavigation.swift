//
//  CabinInfotainmentNavigation.swift
//  VSSGraphQL
//
//  Generated by VSSGraphQL on 12.05.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class CabinInfotainmentNavigation: Object, ObjectSchema {

    public var currentLocation = Field<CabinInfotainmentNavigationCurrentLocation?, NoArguments>("currentLocation")

    public var destinationSet = Field<CabinInfotainmentNavigationDestinationSet?, NoArguments>("destinationSet")

    public required init() { }
}