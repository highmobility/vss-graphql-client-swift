import Artemis

public final class CabinHVACRow1Left: Object, ObjectSchema {

    /// Direction of airstream
    var airDistribution = Field<CabinHVACRow1LeftAirDistributionEnum?, NoArguments>("airDistribution")

    /// Fan Speed, 0 = off. 100 = max
    var fanSpeed = Field<Int?, NoArguments>("fanSpeed")

    /// Temperature
    var temperature = Field<Int?, NoArguments>("temperature")


    public init() { }

}
