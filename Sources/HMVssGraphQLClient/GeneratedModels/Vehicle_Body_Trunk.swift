import Artemis

public final class BodyTrunk: Object, ObjectSchema {

    /// Is trunk locked or unlocked. True = Locked. False = Unlocked.
    var isLocked = Field<Bool?, NoArguments>("isLocked")

    /// Trunk open or closed. True = Open. False = Closed
    var isOpen = Field<Bool?, NoArguments>("isOpen")


    public init() { }

}
