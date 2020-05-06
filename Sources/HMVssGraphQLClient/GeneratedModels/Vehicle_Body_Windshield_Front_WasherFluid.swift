import Artemis

public final class BodyWindshieldFrontWasherFluid: Object, ObjectSchema {

    /// Washer fluid level as a percent. 0 = Empty. 100 = Full.
    var level = Field<Int?, NoArguments>("level")

    /// Low level indication for washer fluid. True = Level Low. False = Level OK.
    var levelLow = Field<Bool?, NoArguments>("levelLow")


    public init() { }

}
