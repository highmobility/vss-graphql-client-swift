import Artemis

public final class CabinLights: Object, ObjectSchema {

    /// How much ambient light is detected in cabin. 0 = No ambient light. 100 = Full brightness
    var ambientLight = Field<Int?, NoArguments>("ambientLight")

    /// Is central dome light light on
    var isDomeOn = Field<Bool?, NoArguments>("isDomeOn")

    /// Is glove box light on
    var isGloveBoxOn = Field<Bool?, NoArguments>("isGloveBoxOn")

    /// Is trunk light light on
    var isTrunkOn = Field<Bool?, NoArguments>("isTrunkOn")

    /// Intensity of the interior lights. 0 = Off. 100 = Full brightness.
    var lightIntensity = Field<Int?, NoArguments>("lightIntensity")

    var row1 = Field<CabinLightsRow1?, NoArguments>("row1")

    var row2 = Field<CabinLightsRow2?, NoArguments>("row2")

    var row3 = Field<CabinLightsRow3?, NoArguments>("row3")

    var row4 = Field<CabinLightsRow4?, NoArguments>("row4")


    public init() { }

}
