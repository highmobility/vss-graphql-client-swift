import Artemis

public final class CabinInfotainmentMediaPlayed: Object, ObjectSchema {

    /// Name of album being played
    var album = Field<String?, NoArguments>("album")

    /// Name of artist being played
    var artist = Field<String?, NoArguments>("artist")

    /// Media selected for playback
    var source = Field<CabinInfotainmentMediaPlayedSourceEnum?, NoArguments>("source")

    /// Name of track being played
    var track = Field<String?, NoArguments>("track")

    /// User Resource associated with the media
    var uri = Field<String?, NoArguments>("uri")


    public init() { }

}
