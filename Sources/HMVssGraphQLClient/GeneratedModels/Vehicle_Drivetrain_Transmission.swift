import Artemis

public final class DrivetrainTransmission: Object, ObjectSchema {

    /// Clutch wear as a percent. 0 = no wear. 100 = worn.
    var clutchWear = Field<Int?, NoArguments>("clutchWear")

    /// Drive type.
    var driveType = Field<DrivetrainTransmissionDriveTypeEnum?, NoArguments>("driveType")

    /// Current gear. 0=Neutral. -1=Reverse
    var gear = Field<Int?, NoArguments>("gear")

    /// Is the gearbox in automatic or manual (paddle) mode.
    var gearChangeMode = Field<DrivetrainTransmissionGearChangeModeEnum?, NoArguments>("gearChangeMode")

    /// Number of forward gears in the transmission. -1 = CVT.
    var gearCount = Field<Int?, NoArguments>("gearCount")

    /// Current gearbox performance mode.
    var performanceMode = Field<DrivetrainTransmissionPerformanceModeEnum?, NoArguments>("performanceMode")

    /// Vehicle speed, as sensed by the gearbox.
    var speed = Field<Float?, NoArguments>("speed")

    /// The current gearbox temperature
    var temperature = Field<Int?, NoArguments>("temperature")

    /// Odometer reading
    var travelledDistance = Field<Float?, NoArguments>("travelledDistance")

    /// Transmission type.
    var `type` = Field<DrivetrainTransmissionTypeEnum?, NoArguments>("type")


    public init() { }

}
