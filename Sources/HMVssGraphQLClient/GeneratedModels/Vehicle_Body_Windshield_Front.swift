import Artemis

public final class BodyWindshieldFront: Object, ObjectSchema {

    var heating = Field<BodyWindshieldFrontHeating?, NoArguments>("heating")

    var washerFluid = Field<BodyWindshieldFrontWasherFluid?, NoArguments>("washerFluid")

    var wiping = Field<BodyWindshieldFrontWiping?, NoArguments>("wiping")


    public init() { }

}
