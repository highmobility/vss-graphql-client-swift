import Artemis

public final class CabinConvertible: Object, ObjectSchema {

    /// Roof status on convertible vehicles
    var status = Field<CabinConvertibleStatusEnum?, NoArguments>("status")


    public init() { }

}
