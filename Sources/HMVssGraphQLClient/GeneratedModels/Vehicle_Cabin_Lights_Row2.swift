import Artemis

public final class CabinLightsRow2: Object, ObjectSchema {

    /// Is light shared across second row on
    var isSharedOn = Field<Bool?, NoArguments>("isSharedOn")

    var left = Field<CabinLightsRow2Left?, NoArguments>("left")

    var right = Field<CabinLightsRow2Right?, NoArguments>("right")


    public init() { }

}
