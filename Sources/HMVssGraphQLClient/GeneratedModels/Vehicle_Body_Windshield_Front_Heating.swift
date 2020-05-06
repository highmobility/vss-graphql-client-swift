import Artemis

public final class BodyWindshieldFrontHeating: Object, ObjectSchema {

    /// Front windshield heater status. 0 - off, 1 - on
    var status = Field<Bool?, NoArguments>("status")


    public init() { }

}
