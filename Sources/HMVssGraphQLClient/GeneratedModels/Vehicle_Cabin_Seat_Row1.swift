import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Seat_Row1 {
     pos1: Vehicle_Cabin_Seat_Row1_Pos1
     pos2: Vehicle_Cabin_Seat_Row1_Pos2
     pos3: Vehicle_Cabin_Seat_Row1_Pos3
     pos4: Vehicle_Cabin_Seat_Row1_Pos4
     pos5: Vehicle_Cabin_Seat_Row1_Pos5
   }
*/

final class Vehicle_Cabin_Seat_Row1: Object, ObjectSchema {

    var pos1 = Field<Vehicle_Cabin_Seat_Row1_Pos1?, NoArguments>("pos1")

    var pos2 = Field<Vehicle_Cabin_Seat_Row1_Pos2?, NoArguments>("pos2")

    var pos3 = Field<Vehicle_Cabin_Seat_Row1_Pos3?, NoArguments>("pos3")

    var pos4 = Field<Vehicle_Cabin_Seat_Row1_Pos4?, NoArguments>("pos4")

    var pos5 = Field<Vehicle_Cabin_Seat_Row1_Pos5?, NoArguments>("pos5")

}


public class Cabin_Seat_Row1: Model {

    typealias PartialType = Vehicle_Cabin_Seat_Row1

    public let pos1: Cabin_Seat_Row1_Pos1?
    public let pos2: Cabin_Seat_Row1_Pos2?
    public let pos3: Cabin_Seat_Row1_Pos3?
    public let pos4: Cabin_Seat_Row1_Pos4?
    public let pos5: Cabin_Seat_Row1_Pos5?

    required init?(partial: Partial<PartialType?>) {
        pos1 = Cabin_Seat_Row1_Pos1(partial: partial.pos1)
        pos2 = Cabin_Seat_Row1_Pos2(partial: partial.pos2)
        pos3 = Cabin_Seat_Row1_Pos3(partial: partial.pos3)
        pos4 = Cabin_Seat_Row1_Pos4(partial: partial.pos4)
        pos5 = Cabin_Seat_Row1_Pos5(partial: partial.pos5)
    }
}
