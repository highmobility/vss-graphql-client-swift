import Artemis

public final class OBDO2WRSensor1: Object, ObjectSchema {

    /// PID 34 - Lambda current for wide range/band oxygen sensor 1
    var current = Field<Float?, NoArguments>("current")

    /// PID 24 - Lambda voltage for wide range/band oxygen sensor 1
    var voltage = Field<Float?, NoArguments>("voltage")


    public init() { }

}
