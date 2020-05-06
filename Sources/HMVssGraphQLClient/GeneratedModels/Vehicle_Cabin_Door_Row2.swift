import Artemis

public final class CabinDoorRow2: Object, ObjectSchema {

    var left = Field<CabinDoorRow2Left?, NoArguments>("left")

    var right = Field<CabinDoorRow2Right?, NoArguments>("right")


    public init() { }

}
