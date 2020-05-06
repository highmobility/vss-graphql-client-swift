import Artemis

public final class CabinSeatRow4Pos2Switch: Object, ObjectSchema {

    /// Seat forward switch engaged
    var backward = Field<Bool?, NoArguments>("backward")

    /// Cooler switch for Seat heater
    var cooler = Field<Bool?, NoArguments>("cooler")

    var cushion = Field<CabinSeatRow4Pos2SwitchCushion?, NoArguments>("cushion")

    /// Seat down switch engaged
    var down = Field<Bool?, NoArguments>("down")

    /// Seat forward switch engaged
    var forward = Field<Bool?, NoArguments>("forward")

    var headRestraint = Field<CabinSeatRow4Pos2SwitchHeadRestraint?, NoArguments>("headRestraint")

    var lumbar = Field<CabinSeatRow4Pos2SwitchLumbar?, NoArguments>("lumbar")

    var massage = Field<CabinSeatRow4Pos2SwitchMassage?, NoArguments>("massage")

    var recline = Field<CabinSeatRow4Pos2SwitchRecline?, NoArguments>("recline")

    var sideBolster = Field<CabinSeatRow4Pos2SwitchSideBolster?, NoArguments>("sideBolster")

    /// Seat up switch engaged
    var up = Field<Bool?, NoArguments>("up")

    /// Warmer switch for Seat heater
    var warmer = Field<Bool?, NoArguments>("warmer")


    public init() { }

}
