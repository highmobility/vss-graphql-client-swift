import Artemis

public final class BodyWindshieldRearHeating: Object, ObjectSchema {

    /// Rear windshield heater status. 0 - off, 1 - on
    var status = Field<Bool?, NoArguments>("status")


    public init() { }

}
