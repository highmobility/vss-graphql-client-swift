import Artemis

public final class CabinSeatRow1Pos1SideBolster: Object, ObjectSchema {

    /// Lumbar support inflation. 0 = Fully deflated. 255 = Fully inflated.
    var inflation = Field<Int?, NoArguments>("inflation")


    public init() { }

}
