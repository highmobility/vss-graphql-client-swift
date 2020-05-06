import Artemis

public final class DrivetrainInternalCombustionEngine: Object, ObjectSchema {

    /// Engine configuration.
    var configuration = Field<DrivetrainInternalCombustionEngineConfigurationEnum?, NoArguments>("configuration")

    /// Displacement in cubic centimetres.
    var displacement = Field<Int?, NoArguments>("displacement")

    var engine = Field<DrivetrainInternalCombustionEngineEngine?, NoArguments>("engine")

    /// Type of fuel that the engine runs on.
    var fuelType = Field<DrivetrainInternalCombustionEngineFuelTypeEnum?, NoArguments>("fuelType")

    /// Peak power, in kilowatts, that engine can generate.
    var maxPower = Field<Int?, NoArguments>("maxPower")

    /// Peak power, in newton meter, that the engine can generate.
    var maxTorque = Field<Int?, NoArguments>("maxTorque")


    public init() { }

}
