import Artemis

public final class OBDO2WRSensor3: Object, ObjectSchema {

    /// PID 36 - Lambda current for wide range/band oxygen sensor 4
    var current = Field<Float?, NoArguments>("current")

    /// PID 26 - Lambda voltage for wide range/band oxygen sensor 3
    var voltage = Field<Float?, NoArguments>("voltage")


    public init() { }

}
