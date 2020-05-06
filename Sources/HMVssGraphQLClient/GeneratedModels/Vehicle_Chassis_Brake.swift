import Artemis

public final class ChassisBrake: Object, ObjectSchema {

    /// Brake pedal position as percent. 0 = Not depressed. 100 = Fully depressed.
    var pedalPosition = Field<Int?, NoArguments>("pedalPosition")


    public init() { }

}
