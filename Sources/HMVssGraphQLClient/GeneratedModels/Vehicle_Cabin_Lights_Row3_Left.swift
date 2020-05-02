import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Lights_Row3_Left {
     """
     Is passenger light on
     """
     isPassengerOn: Boolean
   }
*/

final class Vehicle_Cabin_Lights_Row3_Left: Object, ObjectSchema {

    /**
    Is passenger light on
    */
    var isPassengerOn = Field<Bool?, NoArguments>("isPassengerOn")

}


public class Cabin_Lights_Row3_Left: Model {

    typealias PartialType = Vehicle_Cabin_Lights_Row3_Left

    public let isPassengerOn: Bool?

    required init?(partial: Partial<PartialType?>) {
        isPassengerOn = partial.isPassengerOn ?? nil
    }
}
