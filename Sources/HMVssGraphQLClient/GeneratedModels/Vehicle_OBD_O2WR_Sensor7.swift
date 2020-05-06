import Artemis

public final class OBDO2WRSensor7: Object, ObjectSchema {

    /// PID 3A - Lambda current for wide range/band oxygen sensor 7
    var current = Field<Float?, NoArguments>("current")

    /// PID 2A - Lambda voltage for wide range/band oxygen sensor 7
    var voltage = Field<Float?, NoArguments>("voltage")


    public init() { }

}
