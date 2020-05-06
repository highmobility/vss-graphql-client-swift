import Artemis

public final class CabinLightsRow1: Object, ObjectSchema {

    /// Is light shared across first row on
    var isSharedOn = Field<Bool?, NoArguments>("isSharedOn")

    var left = Field<CabinLightsRow1Left?, NoArguments>("left")

    var right = Field<CabinLightsRow1Right?, NoArguments>("right")


    public init() { }

}
