import Artemis

public final class BodyHorn: Object, ObjectSchema {

    /// Horn active or inactive. True = Active. False = Inactive.
    var isActive = Field<Bool?, NoArguments>("isActive")


    public init() { }

}
