import Artemis

public final class CabinSeatRow3Pos4Switch: Object, ObjectSchema {

    /// Seat forward switch engaged
    var backward = Field<Bool?, NoArguments>("backward")

    /// Cooler switch for Seat heater
    var cooler = Field<Bool?, NoArguments>("cooler")

    var cushion = Field<CabinSeatRow3Pos4SwitchCushion?, NoArguments>("cushion")

    /// Seat down switch engaged
    var down = Field<Bool?, NoArguments>("down")

    /// Seat forward switch engaged
    var forward = Field<Bool?, NoArguments>("forward")

    var headRestraint = Field<CabinSeatRow3Pos4SwitchHeadRestraint?, NoArguments>("headRestraint")

    var lumbar = Field<CabinSeatRow3Pos4SwitchLumbar?, NoArguments>("lumbar")

    var massage = Field<CabinSeatRow3Pos4SwitchMassage?, NoArguments>("massage")

    var recline = Field<CabinSeatRow3Pos4SwitchRecline?, NoArguments>("recline")

    var sideBolster = Field<CabinSeatRow3Pos4SwitchSideBolster?, NoArguments>("sideBolster")

    /// Seat up switch engaged
    var up = Field<Bool?, NoArguments>("up")

    /// Warmer switch for Seat heater
    var warmer = Field<Bool?, NoArguments>("warmer")


    public init() { }

}
