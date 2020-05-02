import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_ADAS_ObstacleDetection {
     distanceToObject: Vehicle_ADAS_ObstacleDetection_DistanceToObject
     """
     Indicates if obstacle sensor system incurred an error condition. True = Error. False = No Error.
     """
     error: Boolean
     """
     Indicates if obstacle sensor system is enabled. True = Enabled. False = Disabled.
     """
     isActive: Boolean
   }
*/

final class Vehicle_ADAS_ObstacleDetection: Object, ObjectSchema {

    var distanceToObject = Field<Vehicle_ADAS_ObstacleDetection_DistanceToObject?, NoArguments>("distanceToObject")

    /**
    Indicates if obstacle sensor system incurred an error condition. True = Error. False = No Error.
    */
    var error = Field<Bool?, NoArguments>("error")

    /**
    Indicates if obstacle sensor system is enabled. True = Enabled. False = Disabled.
    */
    var isActive = Field<Bool?, NoArguments>("isActive")

}


public class ADAS_ObstacleDetection: Model {

    typealias PartialType = Vehicle_ADAS_ObstacleDetection

    public let distanceToObject: ADAS_ObstacleDetection_DistanceToObject?
    public let error: Bool?
    public let isActive: Bool?

    required init?(partial: Partial<PartialType?>) {
        distanceToObject = ADAS_ObstacleDetection_DistanceToObject(partial: partial.distanceToObject)
        error = partial.error ?? nil
        isActive = partial.isActive ?? nil
    }
}
