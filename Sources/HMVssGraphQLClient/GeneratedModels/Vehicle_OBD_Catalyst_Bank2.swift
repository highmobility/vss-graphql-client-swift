import Artemis

public final class OBDCatalystBank2: Object, ObjectSchema {

    /// PID 3D - Catalyst temperature from bank 2, sensor 1
    var temperature1 = Field<Float?, NoArguments>("temperature1")

    /// PID 3F - Catalyst temperature from bank 2, sensor 2
    var temperature2 = Field<Float?, NoArguments>("temperature2")


    public init() { }

}
