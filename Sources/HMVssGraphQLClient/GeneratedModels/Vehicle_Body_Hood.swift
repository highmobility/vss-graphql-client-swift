import Artemis

public final class BodyHood: Object, ObjectSchema {

    /// hood open or closed. True = Open. False = Closed
    var isOpen = Field<Bool?, NoArguments>("isOpen")


    public init() { }

}
