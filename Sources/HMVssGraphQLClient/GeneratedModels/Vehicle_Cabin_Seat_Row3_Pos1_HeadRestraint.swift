import Artemis

public final class CabinSeatRow3Pos1HeadRestraint: Object, ObjectSchema {

    /// Height of head restraint. 0 = Bottommost. 255 = Topmost.
    var height = Field<Int?, NoArguments>("height")


    public init() { }

}
