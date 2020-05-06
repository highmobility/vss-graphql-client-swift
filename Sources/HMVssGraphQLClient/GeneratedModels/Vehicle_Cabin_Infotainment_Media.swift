import Artemis

public final class CabinInfotainmentMedia: Object, ObjectSchema {

    /// Tells if the media was
    var action = Field<CabinInfotainmentMediaActionEnum?, NoArguments>("action")

    /// URI of suggested media that was declined
    var declinedURI = Field<String?, NoArguments>("declinedURI")

    var played = Field<CabinInfotainmentMediaPlayed?, NoArguments>("played")

    /// URI of suggested media that was selected
    var selectedURI = Field<String?, NoArguments>("selectedURI")

    /// Current Media Volume
    var volume = Field<Int?, NoArguments>("volume")


    public init() { }

}
