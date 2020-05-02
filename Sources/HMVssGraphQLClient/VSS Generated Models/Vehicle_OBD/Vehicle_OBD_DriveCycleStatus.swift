import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

   type Vehicle_OBD_DriveCycleStatus {
     """
     Number of sensor Trouble Codes (DTC)
     """
     dtcCount: Float
     """
     Type of the ignition for ICE - spark = spark plug ignition, compression = self-igniting (Diesel engines)
     """
     ignitionType: Vehicle_OBD_DriveCycleStatus_IgnitionType_Enum
     """
     Malfunction Indicator Light (MIL) - False = Off, True = On
     """
     mil: Boolean
   }
*/

final class Vehicle_OBD_DriveCycleStatus: Object, ObjectSchema {

   /**
    Number of sensor Trouble Codes (DTC)
   */
   var dtcCount = Field<Float?, NoArguments>("dtcCount")

   /**
    Type of the ignition for ICE - spark = spark plug ignition, compression = self-igniting (Diesel engines)
   */
   var ignitionType = Field<Vehicle_OBD_DriveCycleStatus_IgnitionType_Enum?, NoArguments>("ignitionType")

   /**
    Malfunction Indicator Light (MIL) - False = Off, True = On
   */
   var mil = Field<Bool?, NoArguments>("mil")
}
