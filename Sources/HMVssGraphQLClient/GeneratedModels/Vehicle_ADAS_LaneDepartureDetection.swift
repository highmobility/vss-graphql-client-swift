import Artemis

public final class ADASLaneDepartureDetection: Object, ObjectSchema {

    /// Indicates if lane departure system incurred an error condition. True = Error. False = No Error.
    var error = Field<Bool?, NoArguments>("error")

    /// Indicates if lane departure detection system is enabled. True = Enabled. False = Disabled.
    var isActive = Field<Bool?, NoArguments>("isActive")

    /// Indicates if lane departure detection registered a lane departure
    var warning = Field<Bool?, NoArguments>("warning")


    public init() { }

}
