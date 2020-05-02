import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

   type Vehicle_Body_Lights {
     """
     Is backup (reverse) light on
     """
     isBackupOn: Boolean
     """
     Is brake light on
     """
     isBrakeOn: Boolean
     """
     Is front fog light on
     """
     isFrontFogOn: Boolean
     """
     Are hazards on
     """
     isHazardOn: Boolean
     """
     Is high beam on
     """
     isHighBeamOn: Boolean
     """
     Is left indicator flashing
     """
     isLeftIndicatorOn: Boolean
     """
     Is low beam on
     """
     isLowBeamOn: Boolean
     """
     Is parking light on
     """
     isParkingOn: Boolean
     """
     Is rear fog light on
     """
     isRearFogOn: Boolean
     """
     Is right indicator flashing
     """
     isRightIndicatorOn: Boolean
     """
     Are running lights on
     """
     isRunningOn: Boolean
   }
*/

final class Vehicle_Body_Lights: Object, ObjectSchema {

   /**
    Is backup (reverse) light on
   */
   var isBackupOn = Field<Bool?, NoArguments>("isBackupOn")

   /**
    Is brake light on
   */
   var isBrakeOn = Field<Bool?, NoArguments>("isBrakeOn")

   /**
    Is front fog light on
   */
   var isFrontFogOn = Field<Bool?, NoArguments>("isFrontFogOn")

   /**
    Are hazards on
   */
   var isHazardOn = Field<Bool?, NoArguments>("isHazardOn")

   /**
    Is high beam on
   */
   var isHighBeamOn = Field<Bool?, NoArguments>("isHighBeamOn")

   /**
    Is left indicator flashing
   */
   var isLeftIndicatorOn = Field<Bool?, NoArguments>("isLeftIndicatorOn")

   /**
    Is low beam on
   */
   var isLowBeamOn = Field<Bool?, NoArguments>("isLowBeamOn")

   /**
    Is parking light on
   */
   var isParkingOn = Field<Bool?, NoArguments>("isParkingOn")

   /**
    Is rear fog light on
   */
   var isRearFogOn = Field<Bool?, NoArguments>("isRearFogOn")

   /**
    Is right indicator flashing
   */
   var isRightIndicatorOn = Field<Bool?, NoArguments>("isRightIndicatorOn")

   /**
    Are running lights on
   */
   var isRunningOn = Field<Bool?, NoArguments>("isRunningOn")
}
