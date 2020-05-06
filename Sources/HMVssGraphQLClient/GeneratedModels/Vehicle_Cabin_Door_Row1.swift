import Artemis

public final class CabinDoorRow1: Object, ObjectSchema {

    var left = Field<CabinDoorRow1Left?, NoArguments>("left")

    var right = Field<CabinDoorRow1Right?, NoArguments>("right")


    public init() { }

}
