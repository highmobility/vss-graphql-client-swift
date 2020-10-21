//
//  VSSGraphQLOperation.swift
//  VSSGraphQLClient
//
//  Created by Mikk Rätsep on 14.10.20.
//

import Foundation


public typealias VSSGraphQLOperation = AutoGraphQL.Operation


public extension VSSGraphQLOperation {

    static func vehicleQuery(selectionSet: SelectionSet, name: String = "VehicleQuery") -> VSSGraphQLOperation {
        VSSGraphQLOperation(type: .query, name: name, selectionSet: [
            Object(name: "vehicle", selectionSet: selectionSet)
        ])
    }

    static func vehicleQuery(selectionTypes: [SelectionType], name: String = "VehicleQuery") -> VSSGraphQLOperation {
        VSSGraphQLOperation(type: .query, name: name, selectionSet: [
            Object(name: "vehicle", selectionSet: selectionTypes)
        ])
    }
}
