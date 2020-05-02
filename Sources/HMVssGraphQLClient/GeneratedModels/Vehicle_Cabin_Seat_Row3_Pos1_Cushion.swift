import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Seat_Row3_Pos1_Cushion {
     """
     Height of the seat front. 0 = Lowermost. 500 = Uppermost.
     """
     height: Int
     """
     Forward length of cushion (leg support). 0 = Rearmost. 500 = Forwardmost.
     """
     length: Int
   }
*/

final class Vehicle_Cabin_Seat_Row3_Pos1_Cushion: Object, ObjectSchema {

    /**
    Height of the seat front. 0 = Lowermost. 500 = Uppermost.
    */
    var height = Field<Int?, NoArguments>("height")

    /**
    Forward length of cushion (leg support). 0 = Rearmost. 500 = Forwardmost.
    */
    var length = Field<Int?, NoArguments>("length")

}


public class Cabin_Seat_Row3_Pos1_Cushion: Model {

    typealias PartialType = Vehicle_Cabin_Seat_Row3_Pos1_Cushion

    public let height: Int?
    public let length: Int?

    required init?(partial: Partial<PartialType?>) {
        height = partial.height ?? nil
        length = partial.length ?? nil
    }
}
