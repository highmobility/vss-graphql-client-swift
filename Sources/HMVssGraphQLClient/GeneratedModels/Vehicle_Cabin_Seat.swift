import Artemis

public final class CabinSeat: Object, ObjectSchema {

    /// The position of the driver seat in row 1. (1-5)
    var driverPosition = Field<Int?, NoArguments>("driverPosition")

    var row1 = Field<CabinSeatRow1?, NoArguments>("row1")

    /// Number of seats across row 1 (frontmost)
    var row1PosCount = Field<Int?, NoArguments>("row1PosCount")

    var row2 = Field<CabinSeatRow2?, NoArguments>("row2")

    /// Number of seats across row 2
    var row2PosCount = Field<Int?, NoArguments>("row2PosCount")

    var row3 = Field<CabinSeatRow3?, NoArguments>("row3")

    /// Number of seats across row 3
    var row3PosCount = Field<Int?, NoArguments>("row3PosCount")

    var row4 = Field<CabinSeatRow4?, NoArguments>("row4")

    /// Number of seats across row 4
    var row4PosCount = Field<Int?, NoArguments>("row4PosCount")

    /// Number of seats across row 5
    var row5PosCount = Field<Int?, NoArguments>("row5PosCount")

    /// Number of seat rows in vehicle
    var rowCount = Field<Int?, NoArguments>("rowCount")


    public init() { }

}
