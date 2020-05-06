import Artemis

public final class AngularVelocity: Object, ObjectSchema {

    /// Vehicle rotation rate along Y (lateral).
    var pitch = Field<Int?, NoArguments>("pitch")

    /// Vehicle rotation rate along X (longitudinal).
    var roll = Field<Int?, NoArguments>("roll")

    /// Vehicle rotation rate along Z (vertical).
    var yaw = Field<Int?, NoArguments>("yaw")


    public init() { }

}
