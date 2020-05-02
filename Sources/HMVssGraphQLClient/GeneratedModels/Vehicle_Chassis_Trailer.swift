import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Chassis_Trailer {
     """
     Signal indicating if trailer is connected or not.
     """
     connected: Boolean
   }
*/

final class Vehicle_Chassis_Trailer: Object, ObjectSchema {

    /**
    Signal indicating if trailer is connected or not.
    */
    var connected = Field<Bool?, NoArguments>("connected")

}


public class Chassis_Trailer: Model {

    typealias PartialType = Vehicle_Chassis_Trailer

    public let connected: Bool?

    required init?(partial: Partial<PartialType?>) {
        connected = partial.connected ?? nil
    }
}
