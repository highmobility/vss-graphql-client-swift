import Artemis

public final class DrivetrainInternalCombustionEngineEngine: Object, ObjectSchema {

    /// Ambient (Outside) air temperature
    var ambientAirTemperature = Field<Float?, NoArguments>("ambientAirTemperature")

    /// Engine coolant temperature.
    var ect = Field<Int?, NoArguments>("ect")

    /// Engine oil pressure.
    var eop = Field<Int?, NoArguments>("eop")

    /// Engine oil temperature.
    var eot = Field<Int?, NoArguments>("eot")

    /// Grams of air drawn into engine per second.
    var maf = Field<Int?, NoArguments>("maf")

    /// Manifold air pressure possibly boosted using forced induction.
    var map = Field<Int?, NoArguments>("map")

    /// Current engine power output.
    var power = Field<Int?, NoArguments>("power")

    /// Engine speed measured as rotations per minute.
    var speed = Field<Int?, NoArguments>("speed")

    /// Current throttle position.
    var tps = Field<Int?, NoArguments>("tps")

    /// Current engine torque.
    var torque = Field<Int?, NoArguments>("torque")


    public init() { }

}
