import Artemis

public final class CabinSeatRow2Pos4: Object, ObjectSchema {

    var airbag = Field<CabinSeatRow2Pos4Airbag?, NoArguments>("airbag")

    var cushion = Field<CabinSeatRow2Pos4Cushion?, NoArguments>("cushion")

    /// Does the seat have a passenger in it.
    var hasPassenger = Field<Bool?, NoArguments>("hasPassenger")

    var headRestraint = Field<CabinSeatRow2Pos4HeadRestraint?, NoArguments>("headRestraint")

    /// Seat cooling / heating. 0 = off. -100 = max cold. +100 = max heat
    var heating = Field<Int?, NoArguments>("heating")

    /// Is the belt engaged.
    var isBelted = Field<Bool?, NoArguments>("isBelted")

    var lumbar = Field<CabinSeatRow2Pos4Lumbar?, NoArguments>("lumbar")

    /// Seat massage level. 0 = off. 100 = max massage.
    var massage = Field<Int?, NoArguments>("massage")

    /// Seat horizontal position. 0 = Frontmost. 1000 = Rearmost
    var position = Field<Int?, NoArguments>("position")

    /// Recline level. -90 = Max forward recline. 90 max backward recline
    var recline = Field<Int?, NoArguments>("recline")

    var sideBolster = Field<CabinSeatRow2Pos4SideBolster?, NoArguments>("sideBolster")

    var `switch` = Field<CabinSeatRow2Pos4Switch?, NoArguments>("switch")


    public init() { }

}
