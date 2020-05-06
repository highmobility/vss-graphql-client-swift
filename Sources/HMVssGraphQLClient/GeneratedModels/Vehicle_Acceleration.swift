import Artemis

public final class Acceleration: Object, ObjectSchema {

    /// Vehicle acceleration in Y (lateral acceleration).
    var lateral = Field<Float?, NoArguments>("lateral")

    /// Vehicle acceleration in X (longitudinal acceleration).
    var longitudinal = Field<Float?, NoArguments>("longitudinal")

    /// Vehicle acceleration in Z (vertical acceleration).
    var vertical = Field<Float?, NoArguments>("vertical")


    public init() { }

}
