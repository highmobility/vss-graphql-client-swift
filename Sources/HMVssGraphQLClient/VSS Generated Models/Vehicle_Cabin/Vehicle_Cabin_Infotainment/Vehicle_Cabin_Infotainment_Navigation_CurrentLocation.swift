import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

   type Vehicle_Cabin_Infotainment_Navigation_CurrentLocation {
     """
     Accuracy level of the latitude and longitude coordinates in meters.
     """
     accuracy: Float
     """
     Current elevation of the position in meters.
     """
     altitude: Float
     """
     Current magnetic compass heading, in degrees.
     """
     heading: Float
     """
     Current latitude of vehicle, as reported by GPS.
     """
     latitude: Float
     """
     Current longitude of vehicle, as reported by GPS.
     """
     longitude: Float
     """
     Vehicle speed, as sensed by the GPS receiver.
     """
     speed: Int
   }
*/

final class Vehicle_Cabin_Infotainment_Navigation_CurrentLocation: Object, ObjectSchema {

   /**
    Accuracy level of the latitude and longitude coordinates in meters.
   */
   var accuracy = Field<Float?, NoArguments>("accuracy")

   /**
    Current elevation of the position in meters.
   */
   var altitude = Field<Float?, NoArguments>("altitude")

   /**
    Current magnetic compass heading, in degrees.
   */
   var heading = Field<Float?, NoArguments>("heading")

   /**
    Current latitude of vehicle, as reported by GPS.
   */
   var latitude = Field<Float?, NoArguments>("latitude")

   /**
    Current longitude of vehicle, as reported by GPS.
   */
   var longitude = Field<Float?, NoArguments>("longitude")

   /**
    Vehicle speed, as sensed by the GPS receiver.
   */
   var speed = Field<Int?, NoArguments>("speed")
}
