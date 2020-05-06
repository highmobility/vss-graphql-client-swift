import Artemis

public final class CabinDoor: Object, ObjectSchema {

    /// Number of doors in vehicle
    var count = Field<Int?, NoArguments>("count")

    var row1 = Field<CabinDoorRow1?, NoArguments>("row1")

    var row2 = Field<CabinDoorRow2?, NoArguments>("row2")

    var row3 = Field<CabinDoorRow3?, NoArguments>("row3")

    var row4 = Field<CabinDoorRow4?, NoArguments>("row4")


    public init() { }

}
