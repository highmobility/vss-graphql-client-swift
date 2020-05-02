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
