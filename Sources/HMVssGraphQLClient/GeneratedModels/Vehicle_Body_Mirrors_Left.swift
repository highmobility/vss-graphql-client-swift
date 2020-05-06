import Artemis

public final class BodyMirrorsLeft: Object, ObjectSchema {

    var heating = Field<BodyMirrorsLeftHeating?, NoArguments>("heating")

    /// Mirror pan as a percent. 0 = Center Position. 100 = Fully Left Position. -100 = Fully Right Position.
    var pan = Field<Int?, NoArguments>("pan")

    /// Mirror tilt as a percent. 0 = Center Position. 100 = Fully Upward Position. -100 = Fully Downward Position.
    var tilt = Field<Int?, NoArguments>("tilt")


    public init() { }

}
