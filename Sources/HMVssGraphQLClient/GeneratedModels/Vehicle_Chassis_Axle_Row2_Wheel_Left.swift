import Artemis

public final class ChassisAxleRow2WheelLeft: Object, ObjectSchema {

    var brake = Field<ChassisAxleRow2WheelLeftBrake?, NoArguments>("brake")

    var tire = Field<ChassisAxleRow2WheelLeftTire?, NoArguments>("tire")


    public init() { }

}
