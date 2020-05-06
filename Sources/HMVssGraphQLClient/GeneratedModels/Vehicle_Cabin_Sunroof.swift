import Artemis

public final class CabinSunroof: Object, ObjectSchema {

    /// Sunroof position. 0 = Fully closed 100 = Fully opened. -100 = Fully tilted
    var position = Field<Int?, NoArguments>("position")

    var shade = Field<CabinSunroofShade?, NoArguments>("shade")

    /// Switch controlling sliding action such as window, sunroof, or shade.
    var `switch` = Field<CabinSunroofSwitchEnum?, NoArguments>("switch")


    public init() { }

}
