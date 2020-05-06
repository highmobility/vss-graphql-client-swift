import Artemis

public final class BodyMirrors: Object, ObjectSchema {

    var left = Field<BodyMirrorsLeft?, NoArguments>("left")

    var right = Field<BodyMirrorsRight?, NoArguments>("right")


    public init() { }

}
