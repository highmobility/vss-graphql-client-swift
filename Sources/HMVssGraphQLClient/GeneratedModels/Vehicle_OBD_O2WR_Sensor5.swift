import Artemis

public final class OBDO2WRSensor5: Object, ObjectSchema {

    /// PID 38 - Lambda current for wide range/band oxygen sensor 5
    var current = Field<Float?, NoArguments>("current")

    /// PID 28 - Lambda voltage for wide range/band oxygen sensor 5
    var voltage = Field<Float?, NoArguments>("voltage")


    public init() { }

}
