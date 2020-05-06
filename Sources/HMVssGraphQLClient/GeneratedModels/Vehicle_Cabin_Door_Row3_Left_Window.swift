import Artemis

public final class CabinDoorRow3LeftWindow: Object, ObjectSchema {

    /// Window position. 0 = Fully closed 100 = Fully opened.
    var position = Field<Int?, NoArguments>("position")

    /// Switch controlling sliding action such as window, sunroof, or blind.
    var `switch` = Field<CabinDoorRow3LeftWindowSwitchEnum?, NoArguments>("switch")


    public init() { }

}
