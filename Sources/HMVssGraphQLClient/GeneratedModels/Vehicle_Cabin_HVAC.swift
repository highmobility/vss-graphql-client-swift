import Artemis

public final class CabinHVAC: Object, ObjectSchema {

    /// Ambient air temperature
    var ambientAirTemperature = Field<Float?, NoArguments>("ambientAirTemperature")

    /// Is Air conditioning active.
    var isAirConditioningActive = Field<Bool?, NoArguments>("isAirConditioningActive")

    /// Is front defroster active.
    var isFrontDefrosterActive = Field<Bool?, NoArguments>("isFrontDefrosterActive")

    /// Is rear defroster active.
    var isRearDefrosterActive = Field<Bool?, NoArguments>("isRearDefrosterActive")

    /// Is recirculation active.
    var isRecirculationActive = Field<Bool?, NoArguments>("isRecirculationActive")

    var row1 = Field<CabinHVACRow1?, NoArguments>("row1")

    var row2 = Field<CabinHVACRow2?, NoArguments>("row2")

    var row3 = Field<CabinHVACRow3?, NoArguments>("row3")

    var row4 = Field<CabinHVACRow4?, NoArguments>("row4")


    public init() { }

}
