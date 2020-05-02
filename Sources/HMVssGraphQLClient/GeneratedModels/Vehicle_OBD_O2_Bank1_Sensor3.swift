import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_OBD_O2_Bank1_Sensor3 {
     """
     PID 16 - Sensor voltage
     """
     voltage: Float
   }
*/

final class Vehicle_OBD_O2_Bank1_Sensor3: Object, ObjectSchema {

    /**
    PID 16 - Sensor voltage
    */
    var voltage = Field<Float?, NoArguments>("voltage")

}


public class OBD_O2_Bank1_Sensor3: Model {

    typealias PartialType = Vehicle_OBD_O2_Bank1_Sensor3

    public let voltage: Float?

    required init?(partial: Partial<PartialType?>) {
        voltage = partial.voltage ?? nil
    }
}
