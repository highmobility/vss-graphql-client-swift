import Artemis

public final class OBDStatus: Object, ObjectSchema {

    /// Number of sensor Trouble Codes (DTC)
    var dtcCount = Field<Float?, NoArguments>("dtcCount")

    /// Type of the ignition for ICE - spark = spark plug ignition, compression = self-igniting (Diesel engines)
    var ignitionType = Field<OBDStatusIgnitionTypeEnum?, NoArguments>("ignitionType")

    /// Malfunction Indicator Light (MIL) False = Off, True = On
    var mil = Field<Bool?, NoArguments>("mil")


    public init() { }

}
