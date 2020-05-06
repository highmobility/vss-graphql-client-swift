import Artemis

public final class CabinHVACRow3Right: Object, ObjectSchema {

    /// Direction of airstream
    var airDistribution = Field<CabinHVACRow3RightAirDistributionEnum?, NoArguments>("airDistribution")

    /// Fan Speed, 0 = off. 100 = max
    var fanSpeed = Field<Int?, NoArguments>("fanSpeed")

    /// Temperature
    var temperature = Field<Int?, NoArguments>("temperature")


    public init() { }

}
