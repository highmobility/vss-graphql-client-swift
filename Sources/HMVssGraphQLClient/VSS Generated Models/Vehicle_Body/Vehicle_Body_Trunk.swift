import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

   type Vehicle_Body_Trunk {
     """
     Is trunk locked or unlocked. True = Locked. False = Unlocked.
     """
     isLocked: Boolean
     """
     Trunk open or closed. True = Open. False = Closed
     """
     isOpen: Boolean
   }
*/

final class Vehicle_Body_Trunk: Object, ObjectSchema {

   /**
    Is trunk locked or unlocked. True = Locked. False = Unlocked.
   */
   var isLocked = Field<Bool?, NoArguments>("isLocked")

   /**
    Trunk open or closed. True = Open. False = Closed
   */
   var isOpen = Field<Bool?, NoArguments>("isOpen")
}
