import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Body_Windshield {
     front: Vehicle_Body_Windshield_Front
     rear: Vehicle_Body_Windshield_Rear
   }
*/

final class Vehicle_Body_Windshield: Object, ObjectSchema {

    var front = Field<Vehicle_Body_Windshield_Front?, NoArguments>("front")

    var rear = Field<Vehicle_Body_Windshield_Rear?, NoArguments>("rear")

}


public class Body_Windshield: Model {

    typealias PartialType = Vehicle_Body_Windshield

    public let front: Body_Windshield_Front?
    public let rear: Body_Windshield_Rear?

    required init?(partial: Partial<PartialType?>) {
        front = Body_Windshield_Front(partial: partial.front)
        rear = Body_Windshield_Rear(partial: partial.rear)
    }
}
