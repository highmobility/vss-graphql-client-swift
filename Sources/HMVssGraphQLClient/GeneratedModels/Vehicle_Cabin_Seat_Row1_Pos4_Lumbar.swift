import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Seat_Row1_Pos4_Lumbar {
     """
     Lumbar support position. 0 = Lowermost. 255 = Uppermost.
     """
     height: Int
     """
     Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
     """
     inflation: Int
   }
*/

final class Vehicle_Cabin_Seat_Row1_Pos4_Lumbar: Object, ObjectSchema {

    /**
    Lumbar support position. 0 = Lowermost. 255 = Uppermost.
    */
    var height = Field<Int?, NoArguments>("height")

    /**
    Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
    */
    var inflation = Field<Int?, NoArguments>("inflation")

}


public class Cabin_Seat_Row1_Pos4_Lumbar: Model {

    typealias PartialType = Vehicle_Cabin_Seat_Row1_Pos4_Lumbar

    public let height: Int?
    public let inflation: Int?

    required init?(partial: Partial<PartialType?>) {
        height = partial.height ?? nil
        inflation = partial.inflation ?? nil
    }
}
