import Artemis

public final class Drivetrain: Object, ObjectSchema {

    var batteryManagement = Field<DrivetrainBatteryManagement?, NoArguments>("batteryManagement")

    var electricMotor = Field<DrivetrainElectricMotor?, NoArguments>("electricMotor")

    var fuelCell = Field<DrivetrainFuelCell?, NoArguments>("fuelCell")

    var fuelSystem = Field<DrivetrainFuelSystem?, NoArguments>("fuelSystem")

    var internalCombustionEngine = Field<DrivetrainInternalCombustionEngine?, NoArguments>("internalCombustionEngine")

    var transmission = Field<DrivetrainTransmission?, NoArguments>("transmission")


    public init() { }

}
