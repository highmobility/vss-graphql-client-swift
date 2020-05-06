import Artemis

public final class BodyRaindetection: Object, ObjectSchema {

    /// Rain intensity. 0 = Dry, No Rain. 100 = Covered.
    var intensity = Field<Int?, NoArguments>("intensity")


    public init() { }

}
