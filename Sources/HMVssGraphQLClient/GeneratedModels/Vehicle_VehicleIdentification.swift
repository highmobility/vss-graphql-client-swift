import Artemis

public final class VehicleIdentification: Object, ObjectSchema {

    /// The ACRISS Car Classification Code is a code used by many car rental companies.
    var acrissCode = Field<String?, NoArguments>("acrissCode")

    /// Vehicle brand or manufacturer
    var brand = Field<String?, NoArguments>("brand")

    /// Vehicle model
    var model = Field<String?, NoArguments>("model")

    /// 17-character Vehicle Identification Number (VIN) as defined by ISO 3779
    var vin = Field<String?, NoArguments>("vin")

    /// 3-character World Manufacturer Identification (WMI) as defined by ISO 3780
    var wmi = Field<String?, NoArguments>("wmi")

    /// Model year of the vehicle
    var year = Field<Int?, NoArguments>("year")

    /// Indicates the design and body style of the vehicle (e.g. station wagon, hatchback, etc.).
    var bodyType = Field<String?, NoArguments>("bodyType")

    /// The date of the first registration of the vehicle with the respective public authorities.
    var dateVehicleFirstRegistered = Field<String?, NoArguments>("dateVehicleFirstRegistered")

    /// A textual description of known damages, both repaired and unrepaired.
    var knownVehicleDamages = Field<String?, NoArguments>("knownVehicleDamages")

    /// Indicates that the vehicle meets the respective emission standard.
    var meetsEmissionStandard = Field<String?, NoArguments>("meetsEmissionStandard")

    /// The date of production of the item, e.g. vehicle.
    var productionDate = Field<String?, NoArguments>("productionDate")

    /// The date the item e.g. vehicle was purchased by the current owner.
    var purchaseDate = Field<String?, NoArguments>("purchaseDate")

    /// A short text indicating the configuration of the vehicle, e.g. '5dr hatchback ST 2.5 MT 225 hp' or 'limited edition'.
    var vehicleConfiguration = Field<String?, NoArguments>("vehicleConfiguration")

    /// A short text indicating the configuration of the vehicle, e.g. '5dr hatchback ST 2.5 MT 225 hp' or 'limited edition'.
    var vehicleInteriorColor = Field<String?, NoArguments>("vehicleInteriorColor")

    /// The type or material of the interior of the vehicle (e.g. synthetic fabric, leather, wood, etc.).
    var vehicleInteriorType = Field<String?, NoArguments>("vehicleInteriorType")

    /// The release date of a vehicle model (often used to differentiate versions of the same make and model).
    var vehicleModelDate = Field<String?, NoArguments>("vehicleModelDate")

    /// The number of passengers that can be seated in the vehicle, both in terms of the physical space available, and in terms of limitations set by law.
    var vehicleSeatingCapacity = Field<Int?, NoArguments>("vehicleSeatingCapacity")

    /// Indicates whether the vehicle has been used for special purposes, like commercial rental, driving school.
    var vehicleSpecialUsage = Field<String?, NoArguments>("vehicleSpecialUsage")


    public init() { }

}
