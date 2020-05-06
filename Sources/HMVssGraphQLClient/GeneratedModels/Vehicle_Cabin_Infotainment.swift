import Artemis

public final class CabinInfotainment: Object, ObjectSchema {

    var hmi = Field<CabinInfotainmentHMI?, NoArguments>("hmi")

    var media = Field<CabinInfotainmentMedia?, NoArguments>("media")

    var navigation = Field<CabinInfotainmentNavigation?, NoArguments>("navigation")


    public init() { }

}
