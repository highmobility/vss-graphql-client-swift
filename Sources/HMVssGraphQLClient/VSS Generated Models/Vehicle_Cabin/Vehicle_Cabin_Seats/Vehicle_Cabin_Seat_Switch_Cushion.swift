import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

   type Vehicle_Cabin_Seat_Row1_Pos1_Switch_Cushion {
     """
     Seat cushion backward/shorten switch engaged
     """
     backward: Boolean
     """
     Seat cushion down switch engaged
     """
     down: Boolean
     """
     Seat cushion forward/lengthen switch engaged
     """
     forward: Boolean
     """
     Seat cushion up switch engaged
     """
     up: Boolean
   }
*/

final class Vehicle_Cabin_Seat_Switch_Cushion: Object, ObjectSchema {

   /**
    Seat cushion backward/shorten switch engaged
   */
   var backward = Field<Bool?, NoArguments>("backward")

   /**
    Seat cushion down switch engaged
   */
   var down = Field<Bool?, NoArguments>("down")

   /**
    Seat cushion forward/lengthen switch engaged
   */
   var forward = Field<Bool?, NoArguments>("forward")

   /**
    Seat cushion up switch engaged
   */
   var up = Field<Bool?, NoArguments>("up")
}
