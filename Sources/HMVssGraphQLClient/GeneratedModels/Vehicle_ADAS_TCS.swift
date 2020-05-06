import Artemis

public final class ADASTCS: Object, ObjectSchema {

    /// Indicates if TCS incurred an error condition. True = Error. False = No Error.
    var error = Field<Bool?, NoArguments>("error")

    /// Indicates if TCS is enabled. True = Enabled. False = Disabled.
    var isActive = Field<Bool?, NoArguments>("isActive")

    /// Indicates if TCS is currently regulating traction. True = Engaged. False = Not Engaged.
    var isEngaged = Field<Bool?, NoArguments>("isEngaged")


    public init() { }

}
