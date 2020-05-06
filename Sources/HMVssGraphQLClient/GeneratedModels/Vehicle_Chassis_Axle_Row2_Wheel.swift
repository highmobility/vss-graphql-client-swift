import Artemis

public final class ChassisAxleRow2Wheel: Object, ObjectSchema {

    var left = Field<ChassisAxleRow2WheelLeft?, NoArguments>("left")

    var right = Field<ChassisAxleRow2WheelRight?, NoArguments>("right")


    public init() { }

}
