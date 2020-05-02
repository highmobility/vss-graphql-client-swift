import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_Lights {
     """
     How much ambient light is detected in cabin. 0 = No ambient light. 100 = Full brightness
     """
     ambientLight: Int
     """
     Is central dome light light on
     """
     isDomeOn: Boolean
     """
     Is glove box light on
     """
     isGloveBoxOn: Boolean
     """
     Is trunk light light on
     """
     isTrunkOn: Boolean
     """
     Intensity of the interior lights. 0 = Off. 100 = Full brightness.
     """
     lightIntensity: Int
     row1: Vehicle_Cabin_Lights_Row1
     row2: Vehicle_Cabin_Lights_Row2
     row3: Vehicle_Cabin_Lights_Row3
     row4: Vehicle_Cabin_Lights_Row4
   }
*/

final class Vehicle_Cabin_Lights: Object, ObjectSchema {

    /**
    How much ambient light is detected in cabin. 0 = No ambient light. 100 = Full brightness
    */
    var ambientLight = Field<Int?, NoArguments>("ambientLight")

    /**
    Is central dome light light on
    */
    var isDomeOn = Field<Bool?, NoArguments>("isDomeOn")

    /**
    Is glove box light on
    */
    var isGloveBoxOn = Field<Bool?, NoArguments>("isGloveBoxOn")

    /**
    Is trunk light light on
    */
    var isTrunkOn = Field<Bool?, NoArguments>("isTrunkOn")

    /**
    Intensity of the interior lights. 0 = Off. 100 = Full brightness.
    */
    var lightIntensity = Field<Int?, NoArguments>("lightIntensity")

    var row1 = Field<Vehicle_Cabin_Lights_Row1?, NoArguments>("row1")

    var row2 = Field<Vehicle_Cabin_Lights_Row2?, NoArguments>("row2")

    var row3 = Field<Vehicle_Cabin_Lights_Row3?, NoArguments>("row3")

    var row4 = Field<Vehicle_Cabin_Lights_Row4?, NoArguments>("row4")

}


public class Cabin_Lights: Model {

    typealias PartialType = Vehicle_Cabin_Lights

    public let ambientLight: Int?
    public let isDomeOn: Bool?
    public let isGloveBoxOn: Bool?
    public let isTrunkOn: Bool?
    public let lightIntensity: Int?
    public let row1: Cabin_Lights_Row1?
    public let row2: Cabin_Lights_Row2?
    public let row3: Cabin_Lights_Row3?
    public let row4: Cabin_Lights_Row4?

    required init?(partial: Partial<PartialType?>) {
        ambientLight = partial.ambientLight ?? nil
        isDomeOn = partial.isDomeOn ?? nil
        isGloveBoxOn = partial.isGloveBoxOn ?? nil
        isTrunkOn = partial.isTrunkOn ?? nil
        lightIntensity = partial.lightIntensity ?? nil
        row1 = Cabin_Lights_Row1(partial: partial.row1)
        row2 = Cabin_Lights_Row2(partial: partial.row2)
        row3 = Cabin_Lights_Row3(partial: partial.row3)
        row4 = Cabin_Lights_Row4(partial: partial.row4)
    }
}
