import Artemis

public final class BodyMirrorsLeftHeating: Object, ObjectSchema {

    /// Mirror Heater on or off. True = Heater On. False = Heater Off.
    var status = Field<Bool?, NoArguments>("status")


    public init() { }

}
