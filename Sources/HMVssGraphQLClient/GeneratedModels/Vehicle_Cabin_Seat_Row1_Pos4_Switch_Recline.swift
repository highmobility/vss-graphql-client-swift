import Artemis

public final class CabinSeatRow1Pos4SwitchRecline: Object, ObjectSchema {

    /// Seatback recline backward switch engaged
    var backward = Field<Bool?, NoArguments>("backward")

    /// Seatback recline forward switch engaged
    var forward = Field<Bool?, NoArguments>("forward")


    public init() { }

}
