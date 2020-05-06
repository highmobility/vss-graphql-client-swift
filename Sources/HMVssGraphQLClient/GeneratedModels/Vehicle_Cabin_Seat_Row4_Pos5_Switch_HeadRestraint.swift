import Artemis

public final class CabinSeatRow4Pos5SwitchHeadRestraint: Object, ObjectSchema {

    /// Head restraint down switch engaged
    var down = Field<Bool?, NoArguments>("down")

    /// Head restraint up switch engaged
    var up = Field<Bool?, NoArguments>("up")


    public init() { }

}
