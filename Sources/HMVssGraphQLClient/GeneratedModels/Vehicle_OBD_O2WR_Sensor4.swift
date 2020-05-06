import Artemis

public final class OBDO2WRSensor4: Object, ObjectSchema {

    /// PID 37 - Lambda current for wide range/band oxygen sensor 4
    var current = Field<Float?, NoArguments>("current")

    /// PID 27 - Lambda voltage for wide range/band oxygen sensor 4
    var voltage = Field<Float?, NoArguments>("voltage")


    public init() { }

}
