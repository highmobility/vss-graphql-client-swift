import Artemis

public final class ChassisAxleRow1: Object, ObjectSchema {

    /// Diameter of tires, in inches, as per ETRO / TRA standard.
    var tireDiameter = Field<Int?, NoArguments>("tireDiameter")

    /// Width of tires, in inches, as per ETRO / TRA standard.
    var tireWidth = Field<Int?, NoArguments>("tireWidth")

    var wheel = Field<ChassisAxleRow1Wheel?, NoArguments>("wheel")

    /// Number of wheels on the first axle
    var wheelCount = Field<Int?, NoArguments>("wheelCount")

    /// Diameter of wheels (without tires), in inches, as per ETRO / TRA standard.
    var wheelDiameter = Field<Int?, NoArguments>("wheelDiameter")

    /// Width of wheels (without tires), in inches, as per ETRO / TRA standard.
    var wheelWidth = Field<Int?, NoArguments>("wheelWidth")


    public init() { }

}
