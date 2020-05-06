import Artemis

public final class CabinDoorRow4LeftWindow: Object, ObjectSchema {

    /// Window position. 0 = Fully closed 100 = Fully opened.
    var position = Field<Int?, NoArguments>("position")

    /// Switch controlling sliding action such as window, sunroof, or blind.
    var `switch` = Field<CabinDoorRow4LeftWindowSwitchEnum?, NoArguments>("switch")


    public init() { }

}
