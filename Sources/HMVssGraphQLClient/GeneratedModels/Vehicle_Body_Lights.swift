import Artemis

public final class BodyLights: Object, ObjectSchema {

    /// Is backup (reverse) light on
    var isBackupOn = Field<Bool?, NoArguments>("isBackupOn")

    /// Is brake light on
    var isBrakeOn = Field<Bool?, NoArguments>("isBrakeOn")

    /// Is front fog light on
    var isFrontFogOn = Field<Bool?, NoArguments>("isFrontFogOn")

    /// Are hazards on
    var isHazardOn = Field<Bool?, NoArguments>("isHazardOn")

    /// Is high beam on
    var isHighBeamOn = Field<Bool?, NoArguments>("isHighBeamOn")

    /// Is left indicator flashing
    var isLeftIndicatorOn = Field<Bool?, NoArguments>("isLeftIndicatorOn")

    /// Is low beam on
    var isLowBeamOn = Field<Bool?, NoArguments>("isLowBeamOn")

    /// Is parking light on
    var isParkingOn = Field<Bool?, NoArguments>("isParkingOn")

    /// Is rear fog light on
    var isRearFogOn = Field<Bool?, NoArguments>("isRearFogOn")

    /// Is right indicator flashing
    var isRightIndicatorOn = Field<Bool?, NoArguments>("isRightIndicatorOn")

    /// Are running lights on
    var isRunningOn = Field<Bool?, NoArguments>("isRunningOn")


    public init() { }

}
