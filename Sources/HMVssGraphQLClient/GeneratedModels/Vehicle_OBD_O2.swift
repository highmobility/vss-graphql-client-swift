import Artemis

public final class OBDO2: Object, ObjectSchema {

    var bank1 = Field<OBDO2Bank1?, NoArguments>("bank1")

    var bank2 = Field<OBDO2Bank2?, NoArguments>("bank2")


    public init() { }

}
