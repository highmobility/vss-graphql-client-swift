import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Seat_Row2_Pos4_HeadRestraint {
     """
     Height of head restraint. 0 = Bottommost. 255 = Topmost.
     """
     height: Int
   }
*/

final class Vehicle_Cabin_Seat_Row2_Pos4_HeadRestraint: Object, ObjectSchema {

    /**
    Height of head restraint. 0 = Bottommost. 255 = Topmost.
    */
    var height = Field<Int?, NoArguments>("height")

}


public class Cabin_Seat_Row2_Pos4_HeadRestraint: Model {

    typealias PartialType = Vehicle_Cabin_Seat_Row2_Pos4_HeadRestraint

    public let height: Int?

    required init?(partial: Partial<PartialType?>) {
        height = partial.height ?? nil
    }
}
