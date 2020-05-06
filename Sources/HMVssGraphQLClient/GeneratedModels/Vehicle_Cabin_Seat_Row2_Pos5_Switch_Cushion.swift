import Artemis

public final class CabinSeatRow2Pos5SwitchCushion: Object, ObjectSchema {

    /// Seat cushion backward/shorten switch engaged
    var backward = Field<Bool?, NoArguments>("backward")

    /// Seat cushion down switch engaged
    var down = Field<Bool?, NoArguments>("down")

    /// Seat cushion forward/lengthen switch engaged
    var forward = Field<Bool?, NoArguments>("forward")

    /// Seat cushion up switch engaged
    var up = Field<Bool?, NoArguments>("up")


    public init() { }

}
