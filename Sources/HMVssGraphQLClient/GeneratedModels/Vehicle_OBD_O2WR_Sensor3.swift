import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_OBD_O2WR_Sensor3 {
     """
     PID 36 - Lambda current for wide range/band oxygen sensor 4
     """
     current: Float
     """
     PID 26 - Lambda voltage for wide range/band oxygen sensor 3
     """
     voltage: Float
   }
*/

final class Vehicle_OBD_O2WR_Sensor3: Object, ObjectSchema {

    /**
    PID 36 - Lambda current for wide range/band oxygen sensor 4
    */
    var current = Field<Float?, NoArguments>("current")

    /**
    PID 26 - Lambda voltage for wide range/band oxygen sensor 3
    */
    var voltage = Field<Float?, NoArguments>("voltage")

}


public class OBD_O2WR_Sensor3: Model {

    typealias PartialType = Vehicle_OBD_O2WR_Sensor3

    public let current: Float?
    public let voltage: Float?

    required init?(partial: Partial<PartialType?>) {
        current = partial.current ?? nil
        voltage = partial.voltage ?? nil
    }
}
