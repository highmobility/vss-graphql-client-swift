import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Seat_Row2_Pos5_SideBolster {
     """
     Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
     """
     inflation: Int
   }
*/

final class Vehicle_Cabin_Seat_Row2_Pos5_SideBolster: Object, ObjectSchema {

    /**
    Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
    */
    var inflation = Field<Int?, NoArguments>("inflation")

}


public class Cabin_Seat_Row2_Pos5_SideBolster: Model {

    typealias PartialType = Vehicle_Cabin_Seat_Row2_Pos5_SideBolster

    public let inflation: Int?

    required init?(partial: Partial<PartialType?>) {
        inflation = partial.inflation ?? nil
    }
}
