import Artemis

public final class OBDCatalystBank1: Object, ObjectSchema {

    /// PID 3C - Catalyst temperature from bank 1, sensor 1
    var temperature1 = Field<Float?, NoArguments>("temperature1")

    /// PID 3E - Catalyst temperature from bank 1, sensor 2
    var temperature2 = Field<Float?, NoArguments>("temperature2")


    public init() { }

}
