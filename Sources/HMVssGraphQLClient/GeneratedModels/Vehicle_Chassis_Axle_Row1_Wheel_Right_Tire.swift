import Artemis

public final class ChassisAxleRow1WheelRightTire: Object, ObjectSchema {

    /// Tire pressure in kilo-Pascal
    var pressure = Field<Int?, NoArguments>("pressure")

    /// Tire Pressure Status. True = Low tire pressure. False = Good tire pressure.
    var pressureLow = Field<Bool?, NoArguments>("pressureLow")

    /// Tire temperature in Celsius.
    var temperature = Field<Float?, NoArguments>("temperature")


    public init() { }

}
