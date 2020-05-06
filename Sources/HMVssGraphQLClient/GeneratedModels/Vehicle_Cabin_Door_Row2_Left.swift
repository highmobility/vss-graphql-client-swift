import Artemis

public final class CabinDoorRow2Left: Object, ObjectSchema {

    /// Is door child lock engaged. True = Engaged. False = Disengaged.
    var isChildLockActive = Field<Bool?, NoArguments>("isChildLockActive")

    /// Is door locked or unlocked. True = Locked. False = Unlocked.
    var isLocked = Field<Bool?, NoArguments>("isLocked")

    /// Is door open or closed
    var isOpen = Field<Bool?, NoArguments>("isOpen")

    var shade = Field<CabinDoorRow2LeftShade?, NoArguments>("shade")

    var window = Field<CabinDoorRow2LeftWindow?, NoArguments>("window")


    public init() { }

}
