import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Chassis_Axle_Row1_Wheel_Right_Brake {
     """
     Brake pad wear status. True = Worn. False = Not Worn.
     """
     brakesWorn: Boolean
     """
     Brake fluid level as percent. 0 = Empty. 100 = Full.
     """
     fluidLevel: Int
     """
     Brake fluid level status. True = Brake fluid level low. False = Brake fluid level OK.
     """
     fluidLevelLow: Boolean
     """
     Brake pad wear as percent. 0 = No Wear. 100 = Worn.
     """
     padWear: Int
   }
*/

final class Vehicle_Chassis_Axle_Row1_Wheel_Right_Brake: Object, ObjectSchema {

    /**
    Brake pad wear status. True = Worn. False = Not Worn.
    */
    var brakesWorn = Field<Bool?, NoArguments>("brakesWorn")

    /**
    Brake fluid level as percent. 0 = Empty. 100 = Full.
    */
    var fluidLevel = Field<Int?, NoArguments>("fluidLevel")

    /**
    Brake fluid level status. True = Brake fluid level low. False = Brake fluid level OK.
    */
    var fluidLevelLow = Field<Bool?, NoArguments>("fluidLevelLow")

    /**
    Brake pad wear as percent. 0 = No Wear. 100 = Worn.
    */
    var padWear = Field<Int?, NoArguments>("padWear")

}


public class Chassis_Axle_Row1_Wheel_Right_Brake: Model {

    typealias PartialType = Vehicle_Chassis_Axle_Row1_Wheel_Right_Brake

    public let brakesWorn: Bool?
    public let fluidLevel: Int?
    public let fluidLevelLow: Bool?
    public let padWear: Int?

    required init?(partial: Partial<PartialType?>) {
        brakesWorn = partial.brakesWorn ?? nil
        fluidLevel = partial.fluidLevel ?? nil
        fluidLevelLow = partial.fluidLevelLow ?? nil
        padWear = partial.padWear ?? nil
    }
}
