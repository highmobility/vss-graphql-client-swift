import Artemis

public final class CabinSeatRow2Pos5SwitchMassage: Object, ObjectSchema {

    /// Decrease massage level switch engaged
    var decrease = Field<Bool?, NoArguments>("decrease")

    /// Increase massage level switch engaged
    var increase = Field<Bool?, NoArguments>("increase")


    public init() { }

}
