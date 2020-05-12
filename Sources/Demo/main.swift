//
//  main.swift
//  
//
//  Created by Mikk Rätsep on 30.04.20.
//

import Client
import Foundation



let url = URL(string: "http://localhost:4000")!
let client = VSSGraphQLClient(url: url)

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


client.execute(operation: op) {
    print($0)
    exit(EXIT_SUCCESS)
}

RunLoop.main.run()
