import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Seat_Row2_Pos3_Switch_Recline {
     """
     Seatback recline backward switch engaged
     """
     backward: Boolean
     """
     Seatback recline forward switch engaged
     """
     forward: Boolean
   }
*/

final class Vehicle_Cabin_Seat_Row2_Pos3_Switch_Recline: Object, ObjectSchema {

    /**
    Seatback recline backward switch engaged
    */
    var backward = Field<Bool?, NoArguments>("backward")

    /**
    Seatback recline forward switch engaged
    */
    var forward = Field<Bool?, NoArguments>("forward")

}


public class Cabin_Seat_Row2_Pos3_Switch_Recline: Model {

    typealias PartialType = Vehicle_Cabin_Seat_Row2_Pos3_Switch_Recline

    public let backward: Bool?
    public let forward: Bool?

    required init?(partial: Partial<PartialType?>) {
        backward = partial.backward ?? nil
        forward = partial.forward ?? nil
    }
}
