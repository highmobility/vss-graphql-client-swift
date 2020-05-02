import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

   type Vehicle_Cabin_Seat_Row1_Pos1_HeadRestraint {
     """
     Height of head restraint. 0 = Bottommost. 255 = Topmost.
     """
     height: Int
   }
*/

final class Vehicle_Cabin_Seat_HeadRestraint: Object, ObjectSchema {

   /**
    Height of head restraint. 0 = Bottommost. 255 = Topmost.
   */
   var height = Field<Int?, NoArguments>("height")
}
