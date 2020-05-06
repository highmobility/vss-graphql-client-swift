import Artemis

public final class ADASObstacleDetectionDistanceToObject: Object, ObjectSchema {

    /// Front left distance to object in meters
    var frontLeft = Field<Int?, NoArguments>("frontLeft")

    /// Front right distance to object in meters
    var frontRight = Field<Int?, NoArguments>("frontRight")

    /// Rear left distance to object in meters
    var rearLeft = Field<Int?, NoArguments>("rearLeft")

    /// Rear right distance to object in meters
    var rearRight = Field<Int?, NoArguments>("rearRight")


    public init() { }

}
