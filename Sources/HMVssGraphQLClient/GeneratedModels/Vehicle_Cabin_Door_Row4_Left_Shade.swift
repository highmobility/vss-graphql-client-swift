import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Door_Row4_Left_Shade {
     """
     Position of side window blind. 0 = Fully retracted. 100 = Fully deployed.
     """
     position: Int
     """
     Switch controlling sliding action such as window, sunroof, or blind.
     """
     switch: Vehicle_Cabin_Door_Row4_Left_Shade_Switch_Enum
   }
*/

final class Vehicle_Cabin_Door_Row4_Left_Shade: Object, ObjectSchema {

    /**
    Position of side window blind. 0 = Fully retracted. 100 = Fully deployed.
    */
    var position = Field<Int?, NoArguments>("position")

    /**
    Switch controlling sliding action such as window, sunroof, or blind.
    */
    var `switch` = Field<Vehicle_Cabin_Door_Row4_Left_Shade_Switch_Enum?, NoArguments>("switch")

}


public class Cabin_Door_Row4_Left_Shade: Model {

    typealias PartialType = Vehicle_Cabin_Door_Row4_Left_Shade

    public let position: Int?
    public let `switch`: Cabin_Door_Row4_Left_Shade_Switch_Enum?

    required init?(partial: Partial<PartialType?>) {
        position = partial.position ?? nil
        `switch` = partial.`switch` ?? nil
    }
}
