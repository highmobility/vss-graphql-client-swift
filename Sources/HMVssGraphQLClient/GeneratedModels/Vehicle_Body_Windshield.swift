import Artemis

public final class BodyWindshield: Object, ObjectSchema {

    var front = Field<BodyWindshieldFront?, NoArguments>("front")

    var rear = Field<BodyWindshieldRear?, NoArguments>("rear")


    public init() { }

}
