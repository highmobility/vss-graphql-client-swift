import Artemis

public final class CabinSeatRow2Pos2Lumbar: Object, ObjectSchema {

    /// Lumbar support position. 0 = Lowermost. 255 = Uppermost.
    var height = Field<Int?, NoArguments>("height")

    /// Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
    var inflation = Field<Int?, NoArguments>("inflation")


    public init() { }

}
