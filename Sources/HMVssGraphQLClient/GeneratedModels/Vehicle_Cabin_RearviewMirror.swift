import Artemis

public final class CabinRearviewMirror: Object, ObjectSchema {

    /// Dimming level of rearview mirror. 0 = undimmed. 100 = fully dimmed
    var dimmingLevel = Field<Int?, NoArguments>("dimmingLevel")


    public init() { }

}
