import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Seat_Row4_Pos5 {
     airbag: Vehicle_Cabin_Seat_Row4_Pos5_Airbag
     cushion: Vehicle_Cabin_Seat_Row4_Pos5_Cushion
     """
     Does the seat have a passenger in it.
     """
     hasPassenger: Boolean
     headRestraint: Vehicle_Cabin_Seat_Row4_Pos5_HeadRestraint
     """
     Seat cooling / heating. 0 = off. -100 = max cold. +100 = max heat
     """
     heating: Int
     """
     Is the belt engaged.
     """
     isBelted: Boolean
     lumbar: Vehicle_Cabin_Seat_Row4_Pos5_Lumbar
     """
     Seat massage level. 0 = off. 100 = max massage.
     """
     massage: Int
     """
     Seat horizontal position. 0 = Frontmost. 1000 = Rearmost
     """
     position: Int
     """
     Recline level. -90 = Max forward recline. 90 max backward recline
     """
     recline: Int
     sideBolster: Vehicle_Cabin_Seat_Row4_Pos5_SideBolster
     switch: Vehicle_Cabin_Seat_Row4_Pos5_Switch
   }
*/

final class Vehicle_Cabin_Seat_Row4_Pos5: Object, ObjectSchema {

    var airbag = Field<Vehicle_Cabin_Seat_Row4_Pos5_Airbag?, NoArguments>("airbag")

    var cushion = Field<Vehicle_Cabin_Seat_Row4_Pos5_Cushion?, NoArguments>("cushion")

    /**
    Does the seat have a passenger in it.
    */
    var hasPassenger = Field<Bool?, NoArguments>("hasPassenger")

    var headRestraint = Field<Vehicle_Cabin_Seat_Row4_Pos5_HeadRestraint?, NoArguments>("headRestraint")

    /**
    Seat cooling / heating. 0 = off. -100 = max cold. +100 = max heat
    */
    var heating = Field<Int?, NoArguments>("heating")

    /**
    Is the belt engaged.
    */
    var isBelted = Field<Bool?, NoArguments>("isBelted")

    var lumbar = Field<Vehicle_Cabin_Seat_Row4_Pos5_Lumbar?, NoArguments>("lumbar")

    /**
    Seat massage level. 0 = off. 100 = max massage.
    */
    var massage = Field<Int?, NoArguments>("massage")

    /**
    Seat horizontal position. 0 = Frontmost. 1000 = Rearmost
    */
    var position = Field<Int?, NoArguments>("position")

    /**
    Recline level. -90 = Max forward recline. 90 max backward recline
    */
    var recline = Field<Int?, NoArguments>("recline")

    var sideBolster = Field<Vehicle_Cabin_Seat_Row4_Pos5_SideBolster?, NoArguments>("sideBolster")

    var `switch` = Field<Vehicle_Cabin_Seat_Row4_Pos5_Switch?, NoArguments>("switch")

}


public class Cabin_Seat_Row4_Pos5: Model {

    typealias PartialType = Vehicle_Cabin_Seat_Row4_Pos5

    public let airbag: Cabin_Seat_Row4_Pos5_Airbag?
    public let cushion: Cabin_Seat_Row4_Pos5_Cushion?
    public let hasPassenger: Bool?
    public let headRestraint: Cabin_Seat_Row4_Pos5_HeadRestraint?
    public let heating: Int?
    public let isBelted: Bool?
    public let lumbar: Cabin_Seat_Row4_Pos5_Lumbar?
    public let massage: Int?
    public let position: Int?
    public let recline: Int?
    public let sideBolster: Cabin_Seat_Row4_Pos5_SideBolster?
    public let `switch`: Cabin_Seat_Row4_Pos5_Switch?

    required init?(partial: Partial<PartialType?>) {
        airbag = Cabin_Seat_Row4_Pos5_Airbag(partial: partial.airbag)
        cushion = Cabin_Seat_Row4_Pos5_Cushion(partial: partial.cushion)
        hasPassenger = partial.hasPassenger ?? nil
        headRestraint = Cabin_Seat_Row4_Pos5_HeadRestraint(partial: partial.headRestraint)
        heating = partial.heating ?? nil
        isBelted = partial.isBelted ?? nil
        lumbar = Cabin_Seat_Row4_Pos5_Lumbar(partial: partial.lumbar)
        massage = partial.massage ?? nil
        position = partial.position ?? nil
        recline = partial.recline ?? nil
        sideBolster = Cabin_Seat_Row4_Pos5_SideBolster(partial: partial.sideBolster)
        `switch` = Cabin_Seat_Row4_Pos5_Switch(partial: partial.`switch`)
    }
}
