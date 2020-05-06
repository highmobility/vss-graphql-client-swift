import Artemis

public final class CabinInfotainmentNavigationCurrentLocation: Object, ObjectSchema {

    /// Accuracy level of the latitude and longitude coordinates in meters.
    var accuracy = Field<Float?, NoArguments>("accuracy")

    /// Current elevation of the position in meters.
    var altitude = Field<Float?, NoArguments>("altitude")

    /// Current magnetic compass heading, in degrees.
    var heading = Field<Float?, NoArguments>("heading")

    /// Current latitude of vehicle, as reported by GPS.
    var latitude = Field<Float?, NoArguments>("latitude")

    /// Current longitude of vehicle, as reported by GPS.
    var longitude = Field<Float?, NoArguments>("longitude")

    /// Vehicle speed, as sensed by the GPS receiver.
    var speed = Field<Int?, NoArguments>("speed")


    public init() { }

}
