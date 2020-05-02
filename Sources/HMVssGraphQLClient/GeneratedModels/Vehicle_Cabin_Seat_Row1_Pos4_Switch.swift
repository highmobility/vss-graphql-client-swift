import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Seat_Row1_Pos4_Switch {
     """
     Seat forward switch engaged
     """
     backward: Boolean
     """
     Cooler switch for Seat heater
     """
     cooler: Boolean
     cushion: Vehicle_Cabin_Seat_Row1_Pos4_Switch_Cushion
     """
     Seat down switch engaged
     """
     down: Boolean
     """
     Seat forward switch engaged
     """
     forward: Boolean
     headRestraint: Vehicle_Cabin_Seat_Row1_Pos4_Switch_HeadRestraint
     lumbar: Vehicle_Cabin_Seat_Row1_Pos4_Switch_Lumbar
     massage: Vehicle_Cabin_Seat_Row1_Pos4_Switch_Massage
     recline: Vehicle_Cabin_Seat_Row1_Pos4_Switch_Recline
     sideBolster: Vehicle_Cabin_Seat_Row1_Pos4_Switch_SideBolster
     """
     Seat up switch engaged
     """
     up: Boolean
     """
     Warmer switch for Seat heater
     """
     warmer: Boolean
   }
*/

final class Vehicle_Cabin_Seat_Row1_Pos4_Switch: Object, ObjectSchema {

    /**
    Seat forward switch engaged
    */
    var backward = Field<Bool?, NoArguments>("backward")

    /**
    Cooler switch for Seat heater
    */
    var cooler = Field<Bool?, NoArguments>("cooler")

    var cushion = Field<Vehicle_Cabin_Seat_Row1_Pos4_Switch_Cushion?, NoArguments>("cushion")

    /**
    Seat down switch engaged
    */
    var down = Field<Bool?, NoArguments>("down")

    /**
    Seat forward switch engaged
    */
    var forward = Field<Bool?, NoArguments>("forward")

    var headRestraint = Field<Vehicle_Cabin_Seat_Row1_Pos4_Switch_HeadRestraint?, NoArguments>("headRestraint")

    var lumbar = Field<Vehicle_Cabin_Seat_Row1_Pos4_Switch_Lumbar?, NoArguments>("lumbar")

    var massage = Field<Vehicle_Cabin_Seat_Row1_Pos4_Switch_Massage?, NoArguments>("massage")

    var recline = Field<Vehicle_Cabin_Seat_Row1_Pos4_Switch_Recline?, NoArguments>("recline")

    var sideBolster = Field<Vehicle_Cabin_Seat_Row1_Pos4_Switch_SideBolster?, NoArguments>("sideBolster")

    /**
    Seat up switch engaged
    */
    var up = Field<Bool?, NoArguments>("up")

    /**
    Warmer switch for Seat heater
    */
    var warmer = Field<Bool?, NoArguments>("warmer")

}


public class Cabin_Seat_Row1_Pos4_Switch: Model {

    typealias PartialType = Vehicle_Cabin_Seat_Row1_Pos4_Switch

    public let backward: Bool?
    public let cooler: Bool?
    public let cushion: Cabin_Seat_Row1_Pos4_Switch_Cushion?
    public let down: Bool?
    public let forward: Bool?
    public let headRestraint: Cabin_Seat_Row1_Pos4_Switch_HeadRestraint?
    public let lumbar: Cabin_Seat_Row1_Pos4_Switch_Lumbar?
    public let massage: Cabin_Seat_Row1_Pos4_Switch_Massage?
    public let recline: Cabin_Seat_Row1_Pos4_Switch_Recline?
    public let sideBolster: Cabin_Seat_Row1_Pos4_Switch_SideBolster?
    public let up: Bool?
    public let warmer: Bool?

    required init?(partial: Partial<PartialType?>) {
        backward = partial.backward ?? nil
        cooler = partial.cooler ?? nil
        cushion = Cabin_Seat_Row1_Pos4_Switch_Cushion(partial: partial.cushion)
        down = partial.down ?? nil
        forward = partial.forward ?? nil
        headRestraint = Cabin_Seat_Row1_Pos4_Switch_HeadRestraint(partial: partial.headRestraint)
        lumbar = Cabin_Seat_Row1_Pos4_Switch_Lumbar(partial: partial.lumbar)
        massage = Cabin_Seat_Row1_Pos4_Switch_Massage(partial: partial.massage)
        recline = Cabin_Seat_Row1_Pos4_Switch_Recline(partial: partial.recline)
        sideBolster = Cabin_Seat_Row1_Pos4_Switch_SideBolster(partial: partial.sideBolster)
        up = partial.up ?? nil
        warmer = partial.warmer ?? nil
    }
}
