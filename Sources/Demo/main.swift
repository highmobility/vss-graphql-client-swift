//
//  main.swift
//  
//
//  Created by Mikk Rätsep on 30.04.20.
//

import Client
import Foundation


// Change the URL to a valid endpoint,
// or run VSS data server from https://github.com/GENIVI/vss-graphql
let url = URL(string: "http://localhost:4000")!
let client = VSSGraphQLClient(url: url)

// Create a query to fetch specific values (branches must end with a scalar)
let op = Operation(.query, name: "xxxx") {
    Add<VehicleQuery, Field<Vehicle, NoArguments>>(\.vehicle) {
        Add<Vehicle, Field<VehicleIdentification?, NoArguments>>(\.vehicleIdentification) {
            Add(\.brand)
            Add(\.model)
            Add(\.vin)
            Add(\.year)
            Add(\.bodyType)
        }

        Add(\.travelledDistance)
        Add(\.isMoving)

        Add<Vehicle, Field<Cabin?, NoArguments>>(\.cabin) {
            Add<Cabin?, Field<CabinDoor?, NoArguments>>(\.door) {
                Add<CabinDoor?, Field<Int?, NoArguments>>(\.count)

                Add<CabinDoor?, Field<CabinDoorRow1?, NoArguments>>(\.row1) {
                    Add<CabinDoorRow1?, Field<CabinDoorRow1Left?, NoArguments>>(\.left) {
                        Add<CabinDoorRow1Left?, Field<Bool?, NoArguments>>(\.isOpen)
                    }
                }
            }
        }
    }
}


// Execute the operation and output the result
client.execute(operation: op) { result in
    switch result {
    case .failure(let error):
        print("ERROR:", error)

    case .success(let partialVehicle):
        print("SUCCESS:", partialVehicle)

        print("brand:", (partialVehicle.vehicleIdentification?.brand ?? nil))
        print("isMoving:", (partialVehicle.isMoving ?? nil))

        if let model = partialVehicle.vehicleIdentification?.model ?? nil {
            print("model:", model)
        }

        if let isOpen = partialVehicle.cabin?.door?.row1?.left?.isOpen ?? nil {
            print("left front door open:", isOpen)
        }
    }

    exit(EXIT_SUCCESS)
}

// Keep the program running (until a response is received)
RunLoop.main.run()
