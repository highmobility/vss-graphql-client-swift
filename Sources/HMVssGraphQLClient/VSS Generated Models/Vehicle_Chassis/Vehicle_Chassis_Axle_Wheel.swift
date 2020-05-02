import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

   type Vehicle_Chassis_Axle_Row1_Wheel_Left {
     brake: Vehicle_Chassis_Axle_Row1_Wheel_Left_Brake
     tire: Vehicle_Chassis_Axle_Row1_Wheel_Left_Tire
   }
*/

final class Vehicle_Chassis_Axle_Wheel: Object, ObjectSchema {

   var brake = Field<Vehicle_Chassis_Axle_Wheel_Brake?, NoArguments>("brake")

   var tire = Field<Vehicle_Chassis_Axle_Wheel_Tire?, NoArguments>("tire")
}
