import Artemis

public final class DrivetrainFuelSystem: Object, ObjectSchema {

    /// Average consumption in liters per 100 km.
    var averageConsumption = Field<Float?, NoArguments>("averageConsumption")

    /// Fuel amount consumed since start in liters.
    var consumptionSinceStart = Field<Float?, NoArguments>("consumptionSinceStart")

    /// Indicates whether eco start stop is currently enabled
    var engineStopStartEnabled = Field<Bool?, NoArguments>("engineStopStartEnabled")

    /// Defines the fuel type of the vehicle
    var fuelType = Field<DrivetrainFuelSystemFuelTypeEnum?, NoArguments>("fuelType")

    /// Defines the hybrid type of the vehicle
    var hybridType = Field<DrivetrainFuelSystemHybridTypeEnum?, NoArguments>("hybridType")

    /// Current consumption in liters per 100 km.
    var instantConsumption = Field<Float?, NoArguments>("instantConsumption")

    /// Level in fuel tank as percent of capacity. 0 = empty. 100 = full.
    var level = Field<Int?, NoArguments>("level")

    /// Indicates that the fuel level is low (e.g. less 50km range)
    var lowFuelLevel = Field<Bool?, NoArguments>("lowFuelLevel")

    /// Range in meters.
    var range = Field<Float?, NoArguments>("range")

    /// Capacity of the fuel tank in liters
    var tankCapacity = Field<Int?, NoArguments>("tankCapacity")

    /// Time elapsed since start in seconds.
    var timeSinceStart = Field<Float?, NoArguments>("timeSinceStart")


    public init() { }

}
