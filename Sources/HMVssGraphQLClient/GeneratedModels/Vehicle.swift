import Artemis

public final class Vehicle: Object, ObjectSchema {

    var adas = Field<ADAS?, NoArguments>("adas")

    var acceleration = Field<Acceleration?, NoArguments>("acceleration")

    /// The time needed to accelerate the vehicle from a given start velocity to a given target velocity.
    var accelerationTime = Field<Int?, NoArguments>("accelerationTime")

    /// Ambient air temperature
    var ambientAirTemperature = Field<Float?, NoArguments>("ambientAirTemperature")

    var angularVelocity = Field<AngularVelocity?, NoArguments>("angularVelocity")

    /// Average speed for the current trip
    var averageSpeed = Field<Float?, NoArguments>("averageSpeed")

    var body = Field<Body?, NoArguments>("body")

    var cabin = Field<Cabin?, NoArguments>("cabin")

    /// The available volume for cargo or luggage. For automobiles, this is usually the trunk volume.
    var cargoVolume = Field<Int?, NoArguments>("cargoVolume")

    var chassis = Field<Chassis?, NoArguments>("chassis")

    /// Accumulated drive time in seconds.
    var driveTime = Field<Float?, NoArguments>("driveTime")

    var drivetrain = Field<Drivetrain?, NoArguments>("drivetrain")

    /// The CO2 emissions in g/km.
    var emissionsCO2 = Field<Int?, NoArguments>("emissionsCO2")

    /// Accumulated idle time in seconds.
    var idleTime = Field<Float?, NoArguments>("idleTime")

    /// Accumulated ignition off time in seconds.
    var ignitionOffTime = Field<Float?, NoArguments>("ignitionOffTime")

    /// Accumulated ignition on time in seconds.
    var ignitionOnTime = Field<Float?, NoArguments>("ignitionOnTime")

    /// Indicates whether the vehicle is stationary or moving
    var isMoving = Field<Bool?, NoArguments>("isMoving")

    var obd = Field<OBD?, NoArguments>("obd")

    /// The permitted total weight of cargo and installations (e.g. a roof rack) on top of the vehicle.
    var roofLoad = Field<Int?, NoArguments>("roofLoad")

    /// Vehicle speed, as sensed by the gearbox.
    var speed = Field<Float?, NoArguments>("speed")

    /// Odometer reading
    var travelledDistance = Field<Float?, NoArguments>("travelledDistance")

    /// Current trip meter reading
    var tripMeterReading = Field<Float?, NoArguments>("tripMeterReading")

    var vehicleIdentification = Field<VehicleIdentification?, NoArguments>("vehicleIdentification")


    public init() { }

}
