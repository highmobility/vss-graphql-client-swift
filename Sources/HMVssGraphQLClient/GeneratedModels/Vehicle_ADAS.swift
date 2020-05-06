import Artemis

public final class ADAS: Object, ObjectSchema {

    var abs = Field<ADASABS?, NoArguments>("abs")

    var cruiseControl = Field<ADASCruiseControl?, NoArguments>("cruiseControl")

    var esc = Field<ADASESC?, NoArguments>("esc")

    var laneDepartureDetection = Field<ADASLaneDepartureDetection?, NoArguments>("laneDepartureDetection")

    var obstacleDetection = Field<ADASObstacleDetection?, NoArguments>("obstacleDetection")

    var tcs = Field<ADASTCS?, NoArguments>("tcs")


    public init() { }

}
