import Artemis

public final class ADASCruiseControl: Object, ObjectSchema {

    /// Indicates if cruise control system incurred and error condition. True = Error. False = NoError.
    var error = Field<Bool?, NoArguments>("error")

    /// Indicates if cruise control system is enabled. True = Enabled. False = Disabled.
    var isActive = Field<Bool?, NoArguments>("isActive")

    /// Set cruise control speed in kilometers per hour
    var speedSet = Field<Float?, NoArguments>("speedSet")


    public init() { }

}
