//
//  VehicleQuery.swift
//  Client
//
//  Created by Mikk Rätsep on 12.05.20.
//

import Artemis
import Foundation


public class VehicleQuery: Object, ObjectSchema {

    public var vehicle = Field<Vehicle, NoArguments>("vehicle")


    public required init() { }
}
