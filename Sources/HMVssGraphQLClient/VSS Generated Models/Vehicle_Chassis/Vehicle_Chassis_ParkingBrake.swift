import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

   type Vehicle_Chassis_ParkingBrake {
     """
     Parking brake status. True = Parking Brake is Engaged. False = Parking Brake is not Engaged.
     """
     isEngaged: Boolean
   }
*/

final class Vehicle_Chassis_ParkingBrake: Object, ObjectSchema {

   /**
    Parking brake status. True = Parking Brake is Engaged. False = Parking Brake is not Engaged.
   */
   var isEngaged = Field<Bool?, NoArguments>("isEngaged")
}
