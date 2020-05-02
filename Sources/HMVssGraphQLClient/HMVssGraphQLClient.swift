//
// Hello fellow human
//

import Artemis
import Foundation


//public class HMVssGraphQLClient {
//
//    public let url: URL
//
//
//    func executeRequest(_ completion: @escaping (Result<Partial<Vehicle>, GraphQLError>) -> Void) {
//        let client = Client<VehicleQuery>(endpoint: url)
//
//        client.perform(Operation(.query, name: "VehicleQuery") {
//            // Move this to a separate thing...
//            Add<VehicleQuery, Field<Vehicle, NoArguments>>(\.vehicle) {
//                Add<Vehicle, Field<Vehicle_VehicleIdentification?, NoArguments>>(\.vehicleIdentification) {
//                    Add(\.brand)
//                    Add(\.model)
//                    Add(\.vin)
//                    Add(\.year)
//                    Add(\.bodyType)
//                }
//
//                Add(\.travelledDistance)
//                Add(\.isMoving)
//
//                Add<Vehicle, Field<Vehicle_Cabin?, NoArguments>>(\.cabin) {
//                    Add<Vehicle_Cabin?, Field<Vehicle_Cabin_Doors?, NoArguments>>(\.doors) {
//                        Add<Vehicle_Cabin_Doors?, Field<Int?, NoArguments>>(\.count)
//
//                        Add<Vehicle_Cabin_Doors?, Field<Vehicle_Cabin_Door_Row?, NoArguments>>(\.row1) {
//                            Add<Vehicle_Cabin_Door_Row?, Field<Vehicle_Cabin_Door?, NoArguments>>(\.left) {
//                                Add<Vehicle_Cabin_Door?, Field<Bool?, NoArguments>>(\.isOpen)
//                            }
//                        }
//                    }
//                }
//            }
//        }, completion: completion)
//
//        client.loggingEnabled = false
//    }
//
//
//    public init(url: URL) {
//        self.url = url
//    }
//}
//
//
//
//
//
//final class VehicleQuery: Object, ObjectSchema {
//
//    var vehicle = Field<Vehicle, NoArguments>("vehicle")
//}
//
//
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

