import Artemis

public final class CabinSeatRow1Pos2Airbag: Object, ObjectSchema {

    /// Airbag deployment status. True = Airbag deployed. False = Airbag not deployed.
    var isDeployed = Field<Bool?, NoArguments>("isDeployed")


    public init() { }

}
