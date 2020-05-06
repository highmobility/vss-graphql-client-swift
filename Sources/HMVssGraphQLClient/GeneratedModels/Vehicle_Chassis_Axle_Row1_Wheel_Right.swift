import Artemis

public final class ChassisAxleRow1WheelRight: Object, ObjectSchema {

    var brake = Field<ChassisAxleRow1WheelRightBrake?, NoArguments>("brake")

    var tire = Field<ChassisAxleRow1WheelRightTire?, NoArguments>("tire")


    public init() { }

}
