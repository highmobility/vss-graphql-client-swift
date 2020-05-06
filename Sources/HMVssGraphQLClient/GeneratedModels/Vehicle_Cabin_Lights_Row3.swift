import Artemis

public final class CabinLightsRow3: Object, ObjectSchema {

    /// Is light shared third across row on
    var isSharedOn = Field<Bool?, NoArguments>("isSharedOn")

    var left = Field<CabinLightsRow3Left?, NoArguments>("left")

    var right = Field<CabinLightsRow3Right?, NoArguments>("right")


    public init() { }

}
