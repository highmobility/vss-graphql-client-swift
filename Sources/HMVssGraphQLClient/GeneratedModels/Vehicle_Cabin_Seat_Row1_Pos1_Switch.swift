import Artemis

public final class CabinSeatRow1Pos1Switch: Object, ObjectSchema {

    /// Seat forward switch engaged
    var backward = Field<Bool?, NoArguments>("backward")

    /// Cooler switch for Seat heater
    var cooler = Field<Bool?, NoArguments>("cooler")

    var cushion = Field<CabinSeatRow1Pos1SwitchCushion?, NoArguments>("cushion")

    /// Seat down switch engaged
    var down = Field<Bool?, NoArguments>("down")

    /// Seat forward switch engaged
    var forward = Field<Bool?, NoArguments>("forward")

    var headRestraint = Field<CabinSeatRow1Pos1SwitchHeadRestraint?, NoArguments>("headRestraint")

    var lumbar = Field<CabinSeatRow1Pos1SwitchLumbar?, NoArguments>("lumbar")

    var massage = Field<CabinSeatRow1Pos1SwitchMassage?, NoArguments>("massage")

    var recline = Field<CabinSeatRow1Pos1SwitchRecline?, NoArguments>("recline")

    var sideBolster = Field<CabinSeatRow1Pos1SwitchSideBolster?, NoArguments>("sideBolster")

    /// Seat up switch engaged
    var up = Field<Bool?, NoArguments>("up")

    /// Warmer switch for Seat heater
    var warmer = Field<Bool?, NoArguments>("warmer")


    public init() { }

}
