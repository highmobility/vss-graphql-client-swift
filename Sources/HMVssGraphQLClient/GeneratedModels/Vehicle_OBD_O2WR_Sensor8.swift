import Artemis

public final class OBDO2WRSensor8: Object, ObjectSchema {

    /// PID 3B - Lambda current for wide range/band oxygen sensor 8
    var current = Field<Float?, NoArguments>("current")

    /// PID 2B - Lambda voltage for wide range/band oxygen sensor 8
    var voltage = Field<Float?, NoArguments>("voltage")


    public init() { }

}
