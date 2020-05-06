import Artemis

public final class ChassisAxle: Object, ObjectSchema {

    /// Number of axles on the vehicle
    var count = Field<Int?, NoArguments>("count")

    var row1 = Field<ChassisAxleRow1?, NoArguments>("row1")

    var row2 = Field<ChassisAxleRow2?, NoArguments>("row2")


    public init() { }

}
