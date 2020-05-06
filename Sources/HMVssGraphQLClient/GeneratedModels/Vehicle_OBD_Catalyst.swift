import Artemis

public final class OBDCatalyst: Object, ObjectSchema {

    var bank1 = Field<OBDCatalystBank1?, NoArguments>("bank1")

    var bank2 = Field<OBDCatalystBank2?, NoArguments>("bank2")


    public init() { }

}
