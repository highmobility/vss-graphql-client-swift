import Artemis

public final class ChassisSteeringWheel: Object, ObjectSchema {

    /// Steering wheel angle. Positive = degrees to the left. Negative = degrees to the right.
    var angle = Field<Int?, NoArguments>("angle")

    /// Steering wheel column extension from dashboard. 0 = Closest to dashboard. 100 = Furthest from dashboard.
    var `extension` = Field<Int?, NoArguments>("extension")

    /// Steering wheel column tilt. 0 = Lowest position. 100 = Highest position.
    var tilt = Field<Int?, NoArguments>("tilt")


    public init() { }

}
