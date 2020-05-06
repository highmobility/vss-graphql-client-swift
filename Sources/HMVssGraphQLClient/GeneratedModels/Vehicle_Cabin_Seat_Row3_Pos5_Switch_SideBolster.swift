import Artemis

public final class CabinSeatRow3Pos5SwitchSideBolster: Object, ObjectSchema {

    /// Lumbar deflation switch engaged
    var deflate = Field<Bool?, NoArguments>("deflate")

    /// Lumbar inflation switch engaged
    var inflate = Field<Bool?, NoArguments>("inflate")


    public init() { }

}
