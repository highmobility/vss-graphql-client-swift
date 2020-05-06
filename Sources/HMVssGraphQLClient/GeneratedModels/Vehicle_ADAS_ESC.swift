import Artemis

public final class ADASESC: Object, ObjectSchema {

    /// Indicates if ESC incurred an error condition. True = Error. False = No Error.
    var error = Field<Bool?, NoArguments>("error")

    /// Indicates if ECS is enabled. True = Enabled. False = Disabled.
    var isActive = Field<Bool?, NoArguments>("isActive")

    /// Indicates if ESC is currently regulating vehicle stability. True = Engaged. False = Not Engaged.
    var isEngaged = Field<Bool?, NoArguments>("isEngaged")


    public init() { }

}
