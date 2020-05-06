import Artemis

public final class CabinInfotainmentHMI: Object, ObjectSchema {

    /// ISO 639-1 standard language code for the current HMI
    var currentLanguage = Field<String?, NoArguments>("currentLanguage")

    /// Date format used in the current HMI
    var dateFormat = Field<CabinInfotainmentHMIDateFormatEnum?, NoArguments>("dateFormat")

    /// Current display theme
    var dayNightMode = Field<CabinInfotainmentHMIDayNightModeEnum?, NoArguments>("dayNightMode")

    /// Distance unit used in the current HMI
    var distanceUnit = Field<CabinInfotainmentHMIDistanceUnitEnum?, NoArguments>("distanceUnit")

    /// EV fuel economy unit used in the current HMI
    var evEconomyUnits = Field<CabinInfotainmentHMIEVEconomyUnitsEnum?, NoArguments>("evEconomyUnits")

    /// Fuel economy unit used in the current HMI
    var fuelEconomyUnits = Field<CabinInfotainmentHMIFuelEconomyUnitsEnum?, NoArguments>("fuelEconomyUnits")

    /// Temperature unit used in the current HMI
    var temperatureUnit = Field<CabinInfotainmentHMITemperatureUnitEnum?, NoArguments>("temperatureUnit")

    /// Time format used in the current HMI
    var timeFormat = Field<CabinInfotainmentHMITimeFormatEnum?, NoArguments>("timeFormat")


    public init() { }

}
