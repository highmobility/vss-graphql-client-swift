import Artemis

public final class CabinSeatRow1Pos5Cushion: Object, ObjectSchema {

    /// Height of the seat front. 0 = Lowermost. 500 = Uppermost.
    var height = Field<Int?, NoArguments>("height")

    /// Forward length of cushion (leg support). 0 = Rearmost. 500 = Forwardmost.
    var length = Field<Int?, NoArguments>("length")


    public init() { }

}
