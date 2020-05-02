import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Seat_Row2_Pos3_Switch_Lumbar {
     """
     Lumbar deflation switch engaged
     """
     deflate: Boolean
     """
     Lumbar down switch engaged
     """
     down: Boolean
     """
     Lumbar inflation switch engaged
     """
     inflate: Boolean
     """
     Lumbar up switch engaged
     """
     up: Boolean
   }
*/

final class Vehicle_Cabin_Seat_Row2_Pos3_Switch_Lumbar: Object, ObjectSchema {

    /**
    Lumbar deflation switch engaged
    */
    var deflate = Field<Bool?, NoArguments>("deflate")

    /**
    Lumbar down switch engaged
    */
    var down = Field<Bool?, NoArguments>("down")

    /**
    Lumbar inflation switch engaged
    */
    var inflate = Field<Bool?, NoArguments>("inflate")

    /**
    Lumbar up switch engaged
    */
    var up = Field<Bool?, NoArguments>("up")

}


public class Cabin_Seat_Row2_Pos3_Switch_Lumbar: Model {

    typealias PartialType = Vehicle_Cabin_Seat_Row2_Pos3_Switch_Lumbar

    public let deflate: Bool?
    public let down: Bool?
    public let inflate: Bool?
    public let up: Bool?

    required init?(partial: Partial<PartialType?>) {
        deflate = partial.deflate ?? nil
        down = partial.down ?? nil
        inflate = partial.inflate ?? nil
        up = partial.up ?? nil
    }
}
