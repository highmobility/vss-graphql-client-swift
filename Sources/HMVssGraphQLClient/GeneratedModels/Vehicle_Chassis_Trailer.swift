import Artemis

public final class ChassisTrailer: Object, ObjectSchema {

    /// Signal indicating if trailer is connected or not.
    var connected = Field<Bool?, NoArguments>("connected")


    public init() { }

}
