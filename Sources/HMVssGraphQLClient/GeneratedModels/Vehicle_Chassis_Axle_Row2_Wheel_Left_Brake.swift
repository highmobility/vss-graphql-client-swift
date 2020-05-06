import Artemis

public final class ChassisAxleRow2WheelLeftBrake: Object, ObjectSchema {

    /// Brake pad wear status. True = Worn. False = Not Worn.
    var brakesWorn = Field<Bool?, NoArguments>("brakesWorn")

    /// Brake fluid level as percent. 0 = Empty. 100 = Full.
    var fluidLevel = Field<Int?, NoArguments>("fluidLevel")

    /// Brake fluid level status. True = Brake fluid level low. False = Brake fluid level OK.
    var fluidLevelLow = Field<Bool?, NoArguments>("fluidLevelLow")

    /// Brake pad wear as percent. 0 = No Wear. 100 = Worn.
    var padWear = Field<Int?, NoArguments>("padWear")


    public init() { }

}
