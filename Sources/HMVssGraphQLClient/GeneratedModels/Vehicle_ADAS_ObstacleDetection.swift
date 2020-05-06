import Artemis

public final class ADASObstacleDetection: Object, ObjectSchema {

    var distanceToObject = Field<ADASObstacleDetectionDistanceToObject?, NoArguments>("distanceToObject")

    /// Indicates if obstacle sensor system incurred an error condition. True = Error. False = No Error.
    var error = Field<Bool?, NoArguments>("error")

    /// Indicates if obstacle sensor system is enabled. True = Enabled. False = Disabled.
    var isActive = Field<Bool?, NoArguments>("isActive")


    public init() { }

}
