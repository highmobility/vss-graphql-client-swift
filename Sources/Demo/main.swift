//
//  main.swift
//  
//
//  Created by Mikk Rätsep on 30.04.20.
//

import VSSGraphQLClient
import Foundation


// Create the query,
// note - GraphQL queries always end with a "Scalar".
let operation = VSSGraphQLOperation.vehicleQuery(selectionSet: [
    Object(name: "drivetrain", selectionSet: [
        Object(name: "batteryManagement", selectionSet: [
            Scalar(name: "batteryCapacity"),
            Scalar(name: "chargingInlet"),
            Scalar(name: "netCapacity")
        ]),
    ]),

    Object(name: "vehicleIdentification", selectionSet: [
        Scalar(name: "brand"),
        Scalar(name: "model"),
        Scalar(name: "vin")
    ]),

    Object(name: "cabin", selectionSet: [
        Object(name: "door", selectionSet: [
            Object(name: "row1", selectionSet: [
                Object(name: "left", selectionSet: [
                    Scalar(name: "isOpen"),
                ]),
            ]),

            Scalar(name: "count"),
        ]),
    ]),
])


// Create the request with the "rootKeyPath" for the "Type",
// this example for the "Vehicle".
// GraphQL response's path always begins with "data".
let request = VSSGraphQLRequest<Vehicle>(operation: operation, rootKeyPath: "data.vehicle")


// Change the URL to a valid endpoint,
// or run "VSS data server" from https://github.com/highmobility/vss-graphql
let url = URL(string: "http://localhost:4000")!


// Send the request towards the URL.
request.send(url: url) { result in
    switch result {
    case .failure(let error):
        print("ERROR:", error)

    case .success(let vehicle):
        print()
        print("SUCCESS:", vehicle)

        print()
        print("brand:", vehicle.vehicleIdentification?.brand ?? "nil")
        print("model:", vehicle.vehicleIdentification?.model ?? "nil")
        print("doors count:", vehicle.cabin?.door?.count ?? "nil")
        print("left door isOpen:", vehicle.cabin?.door?.row1?.left?.isOpen ?? "nil")
        print()
        print("batteryCapacity", vehicle.drivetrain?.batteryManagement?.batteryCapacity ?? "nil")
        print("chargingInlet", vehicle.drivetrain?.batteryManagement?.chargingInlet ?? "nil")
        print("netCapacity", vehicle.drivetrain?.batteryManagement?.netCapacity ?? "nil")
        print()
        print("not in query, lateral acc.:", vehicle.acceleration?.lateral ?? "nil")
        print("not in query, sensor2:", vehicle.obd?.o2?.bank1?.sensor2?.voltage ?? "nil")
    }

    exit(EXIT_SUCCESS)
}


// Keep the program running (until a response is received).
RunLoop.main.run()
