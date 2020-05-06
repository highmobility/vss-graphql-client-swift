import Artemis

public final class CabinDoorRow1LeftShade: Object, ObjectSchema {

    /// Position of side window blind. 0 = Fully retracted. 100 = Fully deployed.
    var position = Field<Int?, NoArguments>("position")

    /// Switch controlling sliding action such as window, sunroof, or blind.
    var `switch` = Field<CabinDoorRow1LeftShadeSwitchEnum?, NoArguments>("switch")


    public init() { }

}
