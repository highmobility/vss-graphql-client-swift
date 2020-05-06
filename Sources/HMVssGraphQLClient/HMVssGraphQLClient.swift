//
// Hello fellow human
//

import Artemis
import Foundation


public class HMVssGraphQLClient {

    public let url: URL


    public func executeRequest(_ completion: @escaping (Result<Vehicle, GraphQLError>) -> Void) {
        let client = Client<VehicleQuery>(endpoint: url)



//        - [Swift.Type] + [Model.Type]


//        enum QueryField {
//            case scalar
//            case object(Query)
//
//
////            let name = "nimi"
//        }

//        enum QueryType {
//            case scalar
//            case object(QueryField...)
//        }



//        struct Query {
//
//
//
//
//            init(_ array: QueryField...) {
//
//            }
//
//            init<R: Model, V>(keyPath: KeyPath<R, V>, array: QueryField...) {
//
//            }
//
////            init<M: Model, T: Scalar>(model: M.Type, type: T.Type, array: QueryField...) {
////
////                let ss = Add<VehicleQuery, Field<VehicleType, NoArguments>>(\.vehicle) {
////                    Add<M.PartialType, Field<T, NoArguments>>(\.ambientAirTemperature)
////                }
////            }
//        }
//
//
//        let query = Query(model: Vehicle.self,
//                          type: Float?.self,
//                          array:  .scalar,
//                                  .scalar,
//                                  .object(.init(
//                                    .scalar,
//                                    .scalar
//                    ))
//        )



//        let qq = Vehicle.self
//        let ww = \Vehicle.accelerationTime
//
//        func zxc() {
//            let ss = Add<VehicleQuery, Field<VehicleType, NoArguments>>(\.vehicle) {
//                Add<VehicleType, Field<Float?, NoArguments>>(\.ambientAirTemperature)
//            }
//
//        }



        client.perform(Operation(.query, name: "VehicleQuery") {
            // Move this to a separate thing...
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
        }, completion: {
            switch $0 {
            case .failure(let error):
                completion(.failure(error))

            case .success(let response):
//                completion(.success(Vehicle(partial: response)))
                break
//                response.cabin?.door?.row1
                
            }
        })

        client.loggingEnabled = false
    }


    public init(url: URL) {
        self.url = url
    }
}





final class VehicleQuery: Object, ObjectSchema {

    var vehicle = Field<Vehicle, NoArguments>("vehicle")
}


//let url = URL(string: "http://localhost:4000")!
//let client = Client<VehicleQuery>(endpoint: url)
//
//
//public func executeRequest() {
//    let semaphore = DispatchSemaphore(value: 0)
//
//    client.perform(Operation(.query, name: "VehicleQuery") {
//        // Move this to a separate thing...
//        Add<VehicleQuery, Field<Vehicle, NoArguments>>(\.vehicle) {
//            Add<Vehicle, Field<Vehicle_VehicleIdentification?, NoArguments>>(\.vehicleIdentification) {
//                Add(\.brand)
//                Add(\.model)
//                Add(\.vin)
//                Add(\.year)
//                Add(\.bodyType)
//            }
//
//            Add(\.travelledDistance)
//            Add(\.isMoving)
//
//            Add<Vehicle, Field<Vehicle_Cabin?, NoArguments>>(\.cabin) {
//                Add<Vehicle_Cabin?, Field<Vehicle_Cabin_Doors?, NoArguments>>(\.doors) {
//                    Add<Vehicle_Cabin_Doors?, Field<Int?, NoArguments>>(\.count)
//
//                    Add<Vehicle_Cabin_Doors?, Field<Vehicle_Cabin_Door_Row?, NoArguments>>(\.row1) {
//                        Add<Vehicle_Cabin_Door_Row?, Field<Vehicle_Cabin_Door?, NoArguments>>(\.left) {
//                            Add<Vehicle_Cabin_Door?, Field<Bool?, NoArguments>>(\.isOpen)
//                        }
//                    }
//                }
//            }
//
////            Add<Vehicle, Field<Vehicle_ADAS?, NoArguments>>(\.adas) {
////                Add<Vehicle_ADAS?, Field<Vehicle_ADAS_ABS?, NoArguments>>(\.abs) {
////                    Add(\.isActive)
////                }
////            }
//        }
//    }, completion: {
//        switch $0 {
//        case .failure(let error):
//            print("FAILURE:", error)
//
//
//        case .success(let response):
//            print("SUCCESS:", response)
//
//
//        }
//
//        semaphore.signal()
//    })
//
//    client.loggingEnabled = false
//
//    semaphore.wait()
//}
