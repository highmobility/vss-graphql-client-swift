import Artemis

public final class OBDO2WRSensor2: Object, ObjectSchema {

    /// PID 35 - Lambda current for wide range/band oxygen sensor 2
    var current = Field<Float?, NoArguments>("current")

    /// PID 25 - Lambda voltage for wide range/band oxygen sensor 2
    var voltage = Field<Float?, NoArguments>("voltage")


    public init() { }

}
