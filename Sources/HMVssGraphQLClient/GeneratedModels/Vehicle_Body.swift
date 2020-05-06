import Artemis

public final class Body: Object, ObjectSchema {

    /// Body type code as defined by ISO 3779
    var bodyType = Field<String?, NoArguments>("bodyType")

    var hood = Field<BodyHood?, NoArguments>("hood")

    var horn = Field<BodyHorn?, NoArguments>("horn")

    var lights = Field<BodyLights?, NoArguments>("lights")

    var mirrors = Field<BodyMirrors?, NoArguments>("mirrors")

    var raindetection = Field<BodyRaindetection?, NoArguments>("raindetection")

    /// Location of the fuel cap or charge port
    var refuelPosition = Field<BodyRefuelPositionEnum?, NoArguments>("refuelPosition")

    var trunk = Field<BodyTrunk?, NoArguments>("trunk")

    var windshield = Field<BodyWindshield?, NoArguments>("windshield")


    public init() { }

}
