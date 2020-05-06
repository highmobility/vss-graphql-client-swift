import Artemis

public final class CabinDoorRow1RightWindow: Object, ObjectSchema {

    /// Window position. 0 = Fully closed 100 = Fully opened.
    var position = Field<Int?, NoArguments>("position")

    /// Switch controlling sliding action such as window, sunroof, or blind.
    var `switch` = Field<CabinDoorRow1RightWindowSwitchEnum?, NoArguments>("switch")


    public init() { }

}
