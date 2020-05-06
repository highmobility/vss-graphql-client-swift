import Artemis

public final class CabinSteeringWheel: Object, ObjectSchema {

    /// Position of the steering wheel inside the cabin
    var position = Field<CabinSteeringWheelPositionEnum?, NoArguments>("position")


    public init() { }

}
