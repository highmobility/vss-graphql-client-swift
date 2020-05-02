import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_OBD_O2 {
     bank1: Vehicle_OBD_O2_Bank1
     bank2: Vehicle_OBD_O2_Bank2
   }
*/

final class Vehicle_OBD_O2: Object, ObjectSchema {

    var bank1 = Field<Vehicle_OBD_O2_Bank1?, NoArguments>("bank1")

    var bank2 = Field<Vehicle_OBD_O2_Bank2?, NoArguments>("bank2")

}


public class OBD_O2: Model {

    typealias PartialType = Vehicle_OBD_O2

    public let bank1: OBD_O2_Bank1?
    public let bank2: OBD_O2_Bank2?

    required init?(partial: Partial<PartialType?>) {
        bank1 = OBD_O2_Bank1(partial: partial.bank1)
        bank2 = OBD_O2_Bank2(partial: partial.bank2)
    }
}
