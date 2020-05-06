import Artemis

public final class ChassisAxleRow2WheelRight: Object, ObjectSchema {

    var brake = Field<ChassisAxleRow2WheelRightBrake?, NoArguments>("brake")

    var tire = Field<ChassisAxleRow2WheelRightTire?, NoArguments>("tire")


    public init() { }

}
