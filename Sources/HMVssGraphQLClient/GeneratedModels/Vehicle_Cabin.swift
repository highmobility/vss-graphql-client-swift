import Artemis

public final class Cabin: Object, ObjectSchema {

    var convertible = Field<CabinConvertible?, NoArguments>("convertible")

    var door = Field<CabinDoor?, NoArguments>("door")

    var hvac = Field<CabinHVAC?, NoArguments>("hvac")

    var infotainment = Field<CabinInfotainment?, NoArguments>("infotainment")

    var lights = Field<CabinLights?, NoArguments>("lights")

    var rearShade = Field<CabinRearShade?, NoArguments>("rearShade")

    var rearviewMirror = Field<CabinRearviewMirror?, NoArguments>("rearviewMirror")

    var seat = Field<CabinSeat?, NoArguments>("seat")

    var steeringWheel = Field<CabinSteeringWheel?, NoArguments>("steeringWheel")

    var sunroof = Field<CabinSunroof?, NoArguments>("sunroof")


    public init() { }

}
