import Artemis

public final class ADASABS: Object, ObjectSchema {

    /// Indicates if ABS incurred an error condition. True = Error. False = No Error.
    var error = Field<Bool?, NoArguments>("error")

    /// Indicates if ABS is enabled. True = Enabled. False = Disabled.
    var isActive = Field<Bool?, NoArguments>("isActive")

    /// Indicates if ABS is currently regulating brake pressure. True = Engaged. False = Not Engaged.
    var isEngaged = Field<Bool?, NoArguments>("isEngaged")


    public init() { }

}
