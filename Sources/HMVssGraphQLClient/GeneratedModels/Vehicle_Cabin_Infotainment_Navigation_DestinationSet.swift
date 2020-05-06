import Artemis

public final class CabinInfotainmentNavigationDestinationSet: Object, ObjectSchema {

    /// Latitude of destination
    var latitude = Field<Float?, NoArguments>("latitude")

    /// Longitude of destination
    var longitude = Field<Float?, NoArguments>("longitude")


    public init() { }

}
