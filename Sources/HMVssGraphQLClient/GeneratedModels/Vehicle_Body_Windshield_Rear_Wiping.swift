import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Body_Windshield_Rear_Wiping {
     """
     Rear wiper status
     """
     status: Vehicle_Body_Windshield_Rear_Wiping_Status_Enum
   }
*/

final class Vehicle_Body_Windshield_Rear_Wiping: Object, ObjectSchema {

    /**
    Rear wiper status
    */
    var status = Field<Vehicle_Body_Windshield_Rear_Wiping_Status_Enum?, NoArguments>("status")

}


public class Body_Windshield_Rear_Wiping: Model {

    typealias PartialType = Vehicle_Body_Windshield_Rear_Wiping

    public let status: Body_Windshield_Rear_Wiping_Status_Enum?

    required init?(partial: Partial<PartialType?>) {
        status = partial.status ?? nil
    }
}
