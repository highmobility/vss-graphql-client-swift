import Artemis

public final class CabinLightsRow4: Object, ObjectSchema {

    /// Is light shared across fourth row on
    var isSharedOn = Field<Bool?, NoArguments>("isSharedOn")

    var left = Field<CabinLightsRow4Left?, NoArguments>("left")

    var right = Field<CabinLightsRow4Right?, NoArguments>("right")


    public init() { }

}
