import Artemis

public final class BodyWindshieldRear: Object, ObjectSchema {

    var heating = Field<BodyWindshieldRearHeating?, NoArguments>("heating")

    var washerFluid = Field<BodyWindshieldRearWasherFluid?, NoArguments>("washerFluid")

    var wiping = Field<BodyWindshieldRearWiping?, NoArguments>("wiping")


    public init() { }

}
