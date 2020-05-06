import Artemis

public final class CabinHVACRow2: Object, ObjectSchema {

    var left = Field<CabinHVACRow2Left?, NoArguments>("left")

    var right = Field<CabinHVACRow2Right?, NoArguments>("right")


    public init() { }

}
