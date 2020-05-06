import Artemis

public final class CabinSeatRow3Pos3: Object, ObjectSchema {

    var airbag = Field<CabinSeatRow3Pos3Airbag?, NoArguments>("airbag")

    var cushion = Field<CabinSeatRow3Pos3Cushion?, NoArguments>("cushion")

    /// Does the seat have a passenger in it.
    var hasPassenger = Field<Bool?, NoArguments>("hasPassenger")

    var headRestraint = Field<CabinSeatRow3Pos3HeadRestraint?, NoArguments>("headRestraint")

    /// Seat cooling / heating. 0 = off. -100 = max cold. +100 = max heat
    var heating = Field<Int?, NoArguments>("heating")

    /// Is the belt engaged.
    var isBelted = Field<Bool?, NoArguments>("isBelted")

    var lumbar = Field<CabinSeatRow3Pos3Lumbar?, NoArguments>("lumbar")

    /// Seat massage level. 0 = off. 100 = max massage.
    var massage = Field<Int?, NoArguments>("massage")

    /// Seat horizontal position. 0 = Frontmost. 1000 = Rearmost
    var position = Field<Int?, NoArguments>("position")

    /// Recline level. -90 = Max forward recline. 90 max backward recline
    var recline = Field<Int?, NoArguments>("recline")

    var sideBolster = Field<CabinSeatRow3Pos3SideBolster?, NoArguments>("sideBolster")

    var `switch` = Field<CabinSeatRow3Pos3Switch?, NoArguments>("switch")


    public init() { }

}
