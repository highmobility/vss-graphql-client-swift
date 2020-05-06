import Artemis

public final class CabinSeatRow2Pos1Switch: Object, ObjectSchema {

    /// Seat forward switch engaged
    var backward = Field<Bool?, NoArguments>("backward")

    /// Cooler switch for Seat heater
    var cooler = Field<Bool?, NoArguments>("cooler")

    var cushion = Field<CabinSeatRow2Pos1SwitchCushion?, NoArguments>("cushion")

    /// Seat down switch engaged
    var down = Field<Bool?, NoArguments>("down")

    /// Seat forward switch engaged
    var forward = Field<Bool?, NoArguments>("forward")

    var headRestraint = Field<CabinSeatRow2Pos1SwitchHeadRestraint?, NoArguments>("headRestraint")

    var lumbar = Field<CabinSeatRow2Pos1SwitchLumbar?, NoArguments>("lumbar")

    var massage = Field<CabinSeatRow2Pos1SwitchMassage?, NoArguments>("massage")

    var recline = Field<CabinSeatRow2Pos1SwitchRecline?, NoArguments>("recline")

    var sideBolster = Field<CabinSeatRow2Pos1SwitchSideBolster?, NoArguments>("sideBolster")

    /// Seat up switch engaged
    var up = Field<Bool?, NoArguments>("up")

    /// Warmer switch for Seat heater
    var warmer = Field<Bool?, NoArguments>("warmer")


    public init() { }

}
