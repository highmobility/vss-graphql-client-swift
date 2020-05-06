import Artemis

public final class DrivetrainBatteryManagement: Object, ObjectSchema {

    /// Remaining capacity of the batter pack
    var batteryCapacity = Field<Int?, NoArguments>("batteryCapacity")

    /// Temperature of the battery pack
    var batteryTemperature = Field<Float?, NoArguments>("batteryTemperature")

    /// Indicates the primary charging inlet type fitted to the vehicle
    var chargingInlet = Field<DrivetrainBatteryManagementChargingInletEnum?, NoArguments>("chargingInlet")

    /// Indicates that the battery level is low
    var lowBatteryLevel = Field<Bool?, NoArguments>("lowBatteryLevel")


    public init() { }

}
