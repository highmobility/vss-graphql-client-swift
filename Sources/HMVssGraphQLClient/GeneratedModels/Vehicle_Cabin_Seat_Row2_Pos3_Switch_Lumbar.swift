import Artemis

public final class CabinSeatRow2Pos3SwitchLumbar: Object, ObjectSchema {

    /// Lumbar deflation switch engaged
    var deflate = Field<Bool?, NoArguments>("deflate")

    /// Lumbar down switch engaged
    var down = Field<Bool?, NoArguments>("down")

    /// Lumbar inflation switch engaged
    var inflate = Field<Bool?, NoArguments>("inflate")

    /// Lumbar up switch engaged
    var up = Field<Bool?, NoArguments>("up")


    public init() { }

}
