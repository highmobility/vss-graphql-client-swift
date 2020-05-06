import Artemis

public final class ChassisParkingBrake: Object, ObjectSchema {

    /// Parking brake status. True = Parking Brake is Engaged. False = Parking Brake is not Engaged.
    var isEngaged = Field<Bool?, NoArguments>("isEngaged")


    public init() { }

}
