import Artemis

public enum CabinConvertibleStatusEnum: String, Enum {
    case undefined = "undefined"
    case closed = "closed"
    case open = "open"
    case closing = "closing"
    case opening = "opening"
    case stalled = "stalled"
}
