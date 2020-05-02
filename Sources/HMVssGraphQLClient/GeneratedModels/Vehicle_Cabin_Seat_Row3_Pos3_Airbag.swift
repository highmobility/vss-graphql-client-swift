import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Seat_Row3_Pos3_Airbag {
     """
     Airbag deployment status. True = Airbag deployed. False = Airbag not deployed.
     """
     isDeployed: Boolean
   }
*/

final class Vehicle_Cabin_Seat_Row3_Pos3_Airbag: Object, ObjectSchema {

    /**
    Airbag deployment status. True = Airbag deployed. False = Airbag not deployed.
    */
    var isDeployed = Field<Bool?, NoArguments>("isDeployed")

}


public class Cabin_Seat_Row3_Pos3_Airbag: Model {

    typealias PartialType = Vehicle_Cabin_Seat_Row3_Pos3_Airbag

    public let isDeployed: Bool?

    required init?(partial: Partial<PartialType?>) {
        isDeployed = partial.isDeployed ?? nil
    }
}
