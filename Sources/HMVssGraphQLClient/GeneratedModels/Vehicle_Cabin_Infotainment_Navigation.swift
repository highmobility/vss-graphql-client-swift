import Artemis

public final class CabinInfotainmentNavigation: Object, ObjectSchema {

    var currentLocation = Field<CabinInfotainmentNavigationCurrentLocation?, NoArguments>("currentLocation")

    var destinationSet = Field<CabinInfotainmentNavigationDestinationSet?, NoArguments>("destinationSet")


    public init() { }

}
