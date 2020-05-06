import Artemis

public final class Chassis: Object, ObjectSchema {

    var accelerator = Field<ChassisAccelerator?, NoArguments>("accelerator")

    var axle = Field<ChassisAxle?, NoArguments>("axle")

    var brake = Field<ChassisBrake?, NoArguments>("brake")

    /// Vehicle curb weight, in kg, including all liquids and full tank of fuel, but no cargo or passengers.
    var curbWeight = Field<Int?, NoArguments>("curbWeight")

    /// Curb weight of vehicle, including all liquids and full tank of fuel and full load of cargo and passengers.
    var grossWeight = Field<Int?, NoArguments>("grossWeight")

    /// Overall vehicle height, in mm.
    var height = Field<Int?, NoArguments>("height")

    /// Overall vehicle length, in mm.
    var length = Field<Int?, NoArguments>("length")

    var parkingBrake = Field<ChassisParkingBrake?, NoArguments>("parkingBrake")

    var steeringWheel = Field<ChassisSteeringWheel?, NoArguments>("steeringWheel")

    /// Maximum weight, in kilos, of trailer.
    var towWeight = Field<Int?, NoArguments>("towWeight")

    /// Overall wheel tracking, in mm.
    var track = Field<Int?, NoArguments>("track")

    var trailer = Field<ChassisTrailer?, NoArguments>("trailer")

    /// Overall wheel base, in mm.
    var wheelbase = Field<Int?, NoArguments>("wheelbase")

    /// Overall vehicle width, in mm.
    var width = Field<Int?, NoArguments>("width")


    public init() { }

}
