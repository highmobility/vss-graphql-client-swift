import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_OBD_O2Alt_Bank2_Sensor2 {
     """
     Dummy description
     """
     dummyField: String
   }
*/

final class Vehicle_OBD_O2Alt_Bank2_Sensor2: Object, ObjectSchema {

    /**
    Dummy description
    */
    var dummyField = Field<String?, NoArguments>("dummyField")

}


public class OBD_O2Alt_Bank2_Sensor2: Model {

    typealias PartialType = Vehicle_OBD_O2Alt_Bank2_Sensor2

    public let dummyField: String?

    required init?(partial: Partial<PartialType?>) {
        dummyField = partial.dummyField ?? nil
    }
}
