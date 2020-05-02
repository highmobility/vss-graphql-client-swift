import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Body_Windshield_Front {
     heating: Vehicle_Body_Windshield_Front_Heating
     washerFluid: Vehicle_Body_Windshield_Front_WasherFluid
     wiping: Vehicle_Body_Windshield_Front_Wiping
   }
*/

final class Vehicle_Body_Windshield_Front: Object, ObjectSchema {

    var heating = Field<Vehicle_Body_Windshield_Front_Heating?, NoArguments>("heating")

    var washerFluid = Field<Vehicle_Body_Windshield_Front_WasherFluid?, NoArguments>("washerFluid")

    var wiping = Field<Vehicle_Body_Windshield_Front_Wiping?, NoArguments>("wiping")

}


public class Body_Windshield_Front: Model {

    typealias PartialType = Vehicle_Body_Windshield_Front

    public let heating: Body_Windshield_Front_Heating?
    public let washerFluid: Body_Windshield_Front_WasherFluid?
    public let wiping: Body_Windshield_Front_Wiping?

    required init?(partial: Partial<PartialType?>) {
        heating = Body_Windshield_Front_Heating(partial: partial.heating)
        washerFluid = Body_Windshield_Front_WasherFluid(partial: partial.washerFluid)
        wiping = Body_Windshield_Front_Wiping(partial: partial.wiping)
    }
}
