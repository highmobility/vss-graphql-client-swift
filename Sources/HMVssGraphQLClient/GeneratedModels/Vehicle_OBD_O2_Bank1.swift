import Artemis

public final class OBDO2Bank1: Object, ObjectSchema {

    var sensor1 = Field<OBDO2Bank1Sensor1?, NoArguments>("sensor1")

    var sensor2 = Field<OBDO2Bank1Sensor2?, NoArguments>("sensor2")

    var sensor3 = Field<OBDO2Bank1Sensor3?, NoArguments>("sensor3")

    var sensor4 = Field<OBDO2Bank1Sensor4?, NoArguments>("sensor4")


    public init() { }

}
