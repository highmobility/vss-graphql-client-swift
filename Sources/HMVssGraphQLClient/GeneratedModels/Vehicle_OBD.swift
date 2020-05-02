import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_OBD {
     """
     PID 43 - Absolute load value
     """
     absoluteLoad: Int
     """
     PID 49 - Accelerator pedal position D
     """
     acceleratorPositionD: Int
     """
     PID 4A - Accelerator pedal position E
     """
     acceleratorPositionE: Int
     """
     PID 4B - Accelerator pedal position F
     """
     acceleratorPositionF: Int
     """
     PID 12 - Secondary air status
     """
     airStatus: String
     """
     PID 46 - Ambient air temperature
     """
     ambientAirTemperature: Float
     """
     PID 1E - Auxiliary input status (power take off)
     """
     auxInputStatus: Boolean
     """
     PID 33 - Barometric pressure
     """
     barometricPressure: Float
     catalyst: Vehicle_OBD_Catalyst
     """
     PID 2C - Commanded exhaust gas recirculation (EGR)
     """
     commandedEGR: Int
     """
     PID 2E - Commanded evaporative purge (EVAP) valve
     """
     commandedEVAP: Int
     """
     PID 44 - Commanded equivalence ratio
     """
     commandedEquivalenceRatio: Float
     """
     PID 42 - Control module voltage
     """
     controlModuleVoltage: Float
     """
     PID 05 - Coolant temperature
     """
     coolantTemperature: Float
     """
     PID 31 - Distance traveled since codes cleared
     """
     distanceSinceDTCClear: Float
     """
     PID 21 - Distance traveled with MIL on
     """
     distanceWithMIL: Float
     driveCycleStatus: Vehicle_OBD_DriveCycleStatus
     """
     PID 2D - Exhaust gas recirculation (EGR) error
     """
     egrError: Int
     """
     PID 32 - Evaporative purge (EVAP) system pressure
     """
     evapVaporPressure: Float
     """
     PID 53 - Absolute evaporative purge (EVAP) system pressure
     """
     evapVaporPressureAbsolute: Float
     """
     PID 54 - Alternate evaporative purge (EVAP) system pressure
     """
     evapVaporPressureAlternate: Float
     """
     PID 04 - Engine load in percent - 0 = no load, 100 = full load
     """
     engineLoad: Int
     """
     PID 0C - Engine speed measured as rotations per minute
     """
     engineSpeed: Float
     """
     PID 52 - Percentage of ethanol in the fuel
     """
     ethanolPercent: Int
     """
     PID 02 - DTC that triggered the freeze frame
     """
     freezeDTC: String
     """
     PID 5D - Fuel injection timing
     """
     fuelInjectionTiming: Int
     """
     PID 2F - Fuel level in the fuel tank
     """
     fuelLevel: Int
     """
     PID 0A - Fuel pressure
     """
     fuelPressure: Float
     """
     PID 59 - Absolute fuel rail pressure
     """
     fuelRailPressureAbsolute: Float
     """
     PID 23 - Fuel rail pressure direct inject
     """
     fuelRailPressureDirect: Float
     """
     PID 22 - Fuel rail pressure relative to vacuum
     """
     fuelRailPressureVac: Float
     """
     PID 5E - Engine fuel rate
     """
     fuelRate: Float
     """
     PID 03 - Fuel status
     """
     fuelStatus: String
     """
     PID 51 - Fuel type
     """
     fuelType: String
     """
     PID 5B - Remaining life of hybrid battery
     """
     hybridBatteryRemaining: Int
     """
     PID 0F - Intake temperature
     """
     intakeTemp: Float
     """
     PID 07 - Long Term (learned) Fuel Trim - Bank 1 - negative percent leaner, positive percent richer
     """
     longTermFuelTrim1: Int
     """
     PID 09 - Long Term (learned) Fuel Trim - Bank 2 - negative percent leaner, positive percent richer
     """
     longTermFuelTrim2: Int
     """
     PID 56 - Long term secondary O2 trim - Bank 1
     """
     longTermO2Trim1: Int
     """
     PID 58 - Long term secondary O2 trim - Bank 2
     """
     longTermO2Trim2: Int
     """
     PID 10 - Grams of air drawn into engine per second
     """
     maf: Int
     """
     PID 0B - Intake manifold pressure
     """
     map: Float
     """
     PID 50 - Maximum flow for mass air flow sensor
     """
     maxMAF: Float
     o2: Vehicle_OBD_O2
     o2Alt: Vehicle_OBD_O2Alt
     o2WR: Vehicle_OBD_O2WR
     """
     PID 5C - Engine oil temperature
     """
     oilTemperature: Int
     """
     PID 00 - Bit array of the supported pids 01 to 20
     """
     pidsA: Float
     """
     PID 20 - Bit array of the supported pids 21 to 40
     """
     pidsB: Float
     """
     PID 40 - Bit array of the supported pids 41 to 60
     """
     pidsC: Float
     """
     PID 5A - Relative accelerator pedal position
     """
     relativeAcceleratorPosition: Int
     """
     PID 45 - Relative throttle position
     """
     relativeThrottlePosition: Int
     """
     PID 1F - Engine run time
     """
     runTime: Float
     """
     PID 4D - Run time with MIL on
     """
     runTimeMIL: Float
     """
     PID 06 - Short Term (immediate) Fuel Trim - Bank 1 - negative percent leaner, positive percent richer
     """
     shortTermFuelTrim1: Int
     """
     PID 08 - Short Term (immediate) Fuel Trim - Bank 2 - negative percent leaner, positive percent richer
     """
     shortTermFuelTrim2: Int
     """
     PID 55 - Short term secondary O2 trim - Bank 1
     """
     shortTermO2Trim1: Int
     """
     PID 57 - Short term secondary O2 trim - Bank 2
     """
     shortTermO2Trim2: Int
     """
     PID 0D - Vehicle speed
     """
     speed: Float
     status: Vehicle_OBD_Status
     """
     PID 4C - Commanded throttle actuator
     """
     throttleActuator: Int
     """
     PID 11 - Throttle position - 0 = closed throttle, 100 = open throttle
     """
     throttlePosition: Int
     """
     PID 47 - Absolute throttle position B
     """
     throttlePositionB: Int
     """
     PID 48 - Absolute throttle position C
     """
     throttlePositionC: Int
     """
     PID 4E - Time since trouble codes cleared
     """
     timeSinceDTCCleared: Float
     """
     PID 0E - Time advance
     """
     timingAdvance: Float
     """
     PID 30 - Number of warm-ups since codes cleared
     """
     warmupsSinceDTCClear: Int
   }
*/

final class Vehicle_OBD: Object, ObjectSchema {

    /**
    PID 43 - Absolute load value
    */
    var absoluteLoad = Field<Int?, NoArguments>("absoluteLoad")

    /**
    PID 49 - Accelerator pedal position D
    */
    var acceleratorPositionD = Field<Int?, NoArguments>("acceleratorPositionD")

    /**
    PID 4A - Accelerator pedal position E
    */
    var acceleratorPositionE = Field<Int?, NoArguments>("acceleratorPositionE")

    /**
    PID 4B - Accelerator pedal position F
    */
    var acceleratorPositionF = Field<Int?, NoArguments>("acceleratorPositionF")

    /**
    PID 12 - Secondary air status
    */
    var airStatus = Field<String?, NoArguments>("airStatus")

    /**
    PID 46 - Ambient air temperature
    */
    var ambientAirTemperature = Field<Float?, NoArguments>("ambientAirTemperature")

    /**
    PID 1E - Auxiliary input status (power take off)
    */
    var auxInputStatus = Field<Bool?, NoArguments>("auxInputStatus")

    /**
    PID 33 - Barometric pressure
    */
    var barometricPressure = Field<Float?, NoArguments>("barometricPressure")

    var catalyst = Field<Vehicle_OBD_Catalyst?, NoArguments>("catalyst")

    /**
    PID 2C - Commanded exhaust gas recirculation (EGR)
    */
    var commandedEGR = Field<Int?, NoArguments>("commandedEGR")

    /**
    PID 2E - Commanded evaporative purge (EVAP) valve
    */
    var commandedEVAP = Field<Int?, NoArguments>("commandedEVAP")

    /**
    PID 44 - Commanded equivalence ratio
    */
    var commandedEquivalenceRatio = Field<Float?, NoArguments>("commandedEquivalenceRatio")

    /**
    PID 42 - Control module voltage
    */
    var controlModuleVoltage = Field<Float?, NoArguments>("controlModuleVoltage")

    /**
    PID 05 - Coolant temperature
    */
    var coolantTemperature = Field<Float?, NoArguments>("coolantTemperature")

    /**
    PID 31 - Distance traveled since codes cleared
    */
    var distanceSinceDTCClear = Field<Float?, NoArguments>("distanceSinceDTCClear")

    /**
    PID 21 - Distance traveled with MIL on
    */
    var distanceWithMIL = Field<Float?, NoArguments>("distanceWithMIL")

    var driveCycleStatus = Field<Vehicle_OBD_DriveCycleStatus?, NoArguments>("driveCycleStatus")

    /**
    PID 2D - Exhaust gas recirculation (EGR) error
    */
    var egrError = Field<Int?, NoArguments>("egrError")

    /**
    PID 32 - Evaporative purge (EVAP) system pressure
    */
    var evapVaporPressure = Field<Float?, NoArguments>("evapVaporPressure")

    /**
    PID 53 - Absolute evaporative purge (EVAP) system pressure
    */
    var evapVaporPressureAbsolute = Field<Float?, NoArguments>("evapVaporPressureAbsolute")

    /**
    PID 54 - Alternate evaporative purge (EVAP) system pressure
    */
    var evapVaporPressureAlternate = Field<Float?, NoArguments>("evapVaporPressureAlternate")

    /**
    PID 04 - Engine load in percent - 0 = no load, 100 = full load
    */
    var engineLoad = Field<Int?, NoArguments>("engineLoad")

    /**
    PID 0C - Engine speed measured as rotations per minute
    */
    var engineSpeed = Field<Float?, NoArguments>("engineSpeed")

    /**
    PID 52 - Percentage of ethanol in the fuel
    */
    var ethanolPercent = Field<Int?, NoArguments>("ethanolPercent")

    /**
    PID 02 - DTC that triggered the freeze frame
    */
    var freezeDTC = Field<String?, NoArguments>("freezeDTC")

    /**
    PID 5D - Fuel injection timing
    */
    var fuelInjectionTiming = Field<Int?, NoArguments>("fuelInjectionTiming")

    /**
    PID 2F - Fuel level in the fuel tank
    */
    var fuelLevel = Field<Int?, NoArguments>("fuelLevel")

    /**
    PID 0A - Fuel pressure
    */
    var fuelPressure = Field<Float?, NoArguments>("fuelPressure")

    /**
    PID 59 - Absolute fuel rail pressure
    */
    var fuelRailPressureAbsolute = Field<Float?, NoArguments>("fuelRailPressureAbsolute")

    /**
    PID 23 - Fuel rail pressure direct inject
    */
    var fuelRailPressureDirect = Field<Float?, NoArguments>("fuelRailPressureDirect")

    /**
    PID 22 - Fuel rail pressure relative to vacuum
    */
    var fuelRailPressureVac = Field<Float?, NoArguments>("fuelRailPressureVac")

    /**
    PID 5E - Engine fuel rate
    */
    var fuelRate = Field<Float?, NoArguments>("fuelRate")

    /**
    PID 03 - Fuel status
    */
    var fuelStatus = Field<String?, NoArguments>("fuelStatus")

    /**
    PID 51 - Fuel type
    */
    var fuelType = Field<String?, NoArguments>("fuelType")

    /**
    PID 5B - Remaining life of hybrid battery
    */
    var hybridBatteryRemaining = Field<Int?, NoArguments>("hybridBatteryRemaining")

    /**
    PID 0F - Intake temperature
    */
    var intakeTemp = Field<Float?, NoArguments>("intakeTemp")

    /**
    PID 07 - Long Term (learned) Fuel Trim - Bank 1 - negative percent leaner, positive percent richer
    */
    var longTermFuelTrim1 = Field<Int?, NoArguments>("longTermFuelTrim1")

    /**
    PID 09 - Long Term (learned) Fuel Trim - Bank 2 - negative percent leaner, positive percent richer
    */
    var longTermFuelTrim2 = Field<Int?, NoArguments>("longTermFuelTrim2")

    /**
    PID 56 - Long term secondary O2 trim - Bank 1
    */
    var longTermO2Trim1 = Field<Int?, NoArguments>("longTermO2Trim1")

    /**
    PID 58 - Long term secondary O2 trim - Bank 2
    */
    var longTermO2Trim2 = Field<Int?, NoArguments>("longTermO2Trim2")

    /**
    PID 10 - Grams of air drawn into engine per second
    */
    var maf = Field<Int?, NoArguments>("maf")

    /**
    PID 0B - Intake manifold pressure
    */
    var map = Field<Float?, NoArguments>("map")

    /**
    PID 50 - Maximum flow for mass air flow sensor
    */
    var maxMAF = Field<Float?, NoArguments>("maxMAF")

    var o2 = Field<Vehicle_OBD_O2?, NoArguments>("o2")

    var o2Alt = Field<Vehicle_OBD_O2Alt?, NoArguments>("o2Alt")

    var o2WR = Field<Vehicle_OBD_O2WR?, NoArguments>("o2WR")

    /**
    PID 5C - Engine oil temperature
    */
    var oilTemperature = Field<Int?, NoArguments>("oilTemperature")

    /**
    PID 00 - Bit array of the supported pids 01 to 20
    */
    var pidsA = Field<Float?, NoArguments>("pidsA")

    /**
    PID 20 - Bit array of the supported pids 21 to 40
    */
    var pidsB = Field<Float?, NoArguments>("pidsB")

    /**
    PID 40 - Bit array of the supported pids 41 to 60
    */
    var pidsC = Field<Float?, NoArguments>("pidsC")

    /**
    PID 5A - Relative accelerator pedal position
    */
    var relativeAcceleratorPosition = Field<Int?, NoArguments>("relativeAcceleratorPosition")

    /**
    PID 45 - Relative throttle position
    */
    var relativeThrottlePosition = Field<Int?, NoArguments>("relativeThrottlePosition")

    /**
    PID 1F - Engine run time
    */
    var runTime = Field<Float?, NoArguments>("runTime")

    /**
    PID 4D - Run time with MIL on
    */
    var runTimeMIL = Field<Float?, NoArguments>("runTimeMIL")

    /**
    PID 06 - Short Term (immediate) Fuel Trim - Bank 1 - negative percent leaner, positive percent richer
    */
    var shortTermFuelTrim1 = Field<Int?, NoArguments>("shortTermFuelTrim1")

    /**
    PID 08 - Short Term (immediate) Fuel Trim - Bank 2 - negative percent leaner, positive percent richer
    */
    var shortTermFuelTrim2 = Field<Int?, NoArguments>("shortTermFuelTrim2")

    /**
    PID 55 - Short term secondary O2 trim - Bank 1
    */
    var shortTermO2Trim1 = Field<Int?, NoArguments>("shortTermO2Trim1")

    /**
    PID 57 - Short term secondary O2 trim - Bank 2
    */
    var shortTermO2Trim2 = Field<Int?, NoArguments>("shortTermO2Trim2")

    /**
    PID 0D - Vehicle speed
    */
    var speed = Field<Float?, NoArguments>("speed")

    var status = Field<Vehicle_OBD_Status?, NoArguments>("status")

    /**
    PID 4C - Commanded throttle actuator
    */
    var throttleActuator = Field<Int?, NoArguments>("throttleActuator")

    /**
    PID 11 - Throttle position - 0 = closed throttle, 100 = open throttle
    */
    var throttlePosition = Field<Int?, NoArguments>("throttlePosition")

    /**
    PID 47 - Absolute throttle position B
    */
    var throttlePositionB = Field<Int?, NoArguments>("throttlePositionB")

    /**
    PID 48 - Absolute throttle position C
    */
    var throttlePositionC = Field<Int?, NoArguments>("throttlePositionC")

    /**
    PID 4E - Time since trouble codes cleared
    */
    var timeSinceDTCCleared = Field<Float?, NoArguments>("timeSinceDTCCleared")

    /**
    PID 0E - Time advance
    */
    var timingAdvance = Field<Float?, NoArguments>("timingAdvance")

    /**
    PID 30 - Number of warm-ups since codes cleared
    */
    var warmupsSinceDTCClear = Field<Int?, NoArguments>("warmupsSinceDTCClear")

}


public class OBD: Model {

    typealias PartialType = Vehicle_OBD

    public let absoluteLoad: Int?
    public let acceleratorPositionD: Int?
    public let acceleratorPositionE: Int?
    public let acceleratorPositionF: Int?
    public let airStatus: String?
    public let ambientAirTemperature: Float?
    public let auxInputStatus: Bool?
    public let barometricPressure: Float?
    public let catalyst: OBD_Catalyst?
    public let commandedEGR: Int?
    public let commandedEVAP: Int?
    public let commandedEquivalenceRatio: Float?
    public let controlModuleVoltage: Float?
    public let coolantTemperature: Float?
    public let distanceSinceDTCClear: Float?
    public let distanceWithMIL: Float?
    public let driveCycleStatus: OBD_DriveCycleStatus?
    public let egrError: Int?
    public let evapVaporPressure: Float?
    public let evapVaporPressureAbsolute: Float?
    public let evapVaporPressureAlternate: Float?
    public let engineLoad: Int?
    public let engineSpeed: Float?
    public let ethanolPercent: Int?
    public let freezeDTC: String?
    public let fuelInjectionTiming: Int?
    public let fuelLevel: Int?
    public let fuelPressure: Float?
    public let fuelRailPressureAbsolute: Float?
    public let fuelRailPressureDirect: Float?
    public let fuelRailPressureVac: Float?
    public let fuelRate: Float?
    public let fuelStatus: String?
    public let fuelType: String?
    public let hybridBatteryRemaining: Int?
    public let intakeTemp: Float?
    public let longTermFuelTrim1: Int?
    public let longTermFuelTrim2: Int?
    public let longTermO2Trim1: Int?
    public let longTermO2Trim2: Int?
    public let maf: Int?
    public let map: Float?
    public let maxMAF: Float?
    public let o2: OBD_O2?
    public let o2Alt: OBD_O2Alt?
    public let o2WR: OBD_O2WR?
    public let oilTemperature: Int?
    public let pidsA: Float?
    public let pidsB: Float?
    public let pidsC: Float?
    public let relativeAcceleratorPosition: Int?
    public let relativeThrottlePosition: Int?
    public let runTime: Float?
    public let runTimeMIL: Float?
    public let shortTermFuelTrim1: Int?
    public let shortTermFuelTrim2: Int?
    public let shortTermO2Trim1: Int?
    public let shortTermO2Trim2: Int?
    public let speed: Float?
    public let status: OBD_Status?
    public let throttleActuator: Int?
    public let throttlePosition: Int?
    public let throttlePositionB: Int?
    public let throttlePositionC: Int?
    public let timeSinceDTCCleared: Float?
    public let timingAdvance: Float?
    public let warmupsSinceDTCClear: Int?

    required init?(partial: Partial<PartialType?>) {
        absoluteLoad = partial.absoluteLoad ?? nil
        acceleratorPositionD = partial.acceleratorPositionD ?? nil
        acceleratorPositionE = partial.acceleratorPositionE ?? nil
        acceleratorPositionF = partial.acceleratorPositionF ?? nil
        airStatus = partial.airStatus ?? nil
        ambientAirTemperature = partial.ambientAirTemperature ?? nil
        auxInputStatus = partial.auxInputStatus ?? nil
        barometricPressure = partial.barometricPressure ?? nil
        catalyst = OBD_Catalyst(partial: partial.catalyst)
        commandedEGR = partial.commandedEGR ?? nil
        commandedEVAP = partial.commandedEVAP ?? nil
        commandedEquivalenceRatio = partial.commandedEquivalenceRatio ?? nil
        controlModuleVoltage = partial.controlModuleVoltage ?? nil
        coolantTemperature = partial.coolantTemperature ?? nil
        distanceSinceDTCClear = partial.distanceSinceDTCClear ?? nil
        distanceWithMIL = partial.distanceWithMIL ?? nil
        driveCycleStatus = OBD_DriveCycleStatus(partial: partial.driveCycleStatus)
        egrError = partial.egrError ?? nil
        evapVaporPressure = partial.evapVaporPressure ?? nil
        evapVaporPressureAbsolute = partial.evapVaporPressureAbsolute ?? nil
        evapVaporPressureAlternate = partial.evapVaporPressureAlternate ?? nil
        engineLoad = partial.engineLoad ?? nil
        engineSpeed = partial.engineSpeed ?? nil
        ethanolPercent = partial.ethanolPercent ?? nil
        freezeDTC = partial.freezeDTC ?? nil
        fuelInjectionTiming = partial.fuelInjectionTiming ?? nil
        fuelLevel = partial.fuelLevel ?? nil
        fuelPressure = partial.fuelPressure ?? nil
        fuelRailPressureAbsolute = partial.fuelRailPressureAbsolute ?? nil
        fuelRailPressureDirect = partial.fuelRailPressureDirect ?? nil
        fuelRailPressureVac = partial.fuelRailPressureVac ?? nil
        fuelRate = partial.fuelRate ?? nil
        fuelStatus = partial.fuelStatus ?? nil
        fuelType = partial.fuelType ?? nil
        hybridBatteryRemaining = partial.hybridBatteryRemaining ?? nil
        intakeTemp = partial.intakeTemp ?? nil
        longTermFuelTrim1 = partial.longTermFuelTrim1 ?? nil
        longTermFuelTrim2 = partial.longTermFuelTrim2 ?? nil
        longTermO2Trim1 = partial.longTermO2Trim1 ?? nil
        longTermO2Trim2 = partial.longTermO2Trim2 ?? nil
        maf = partial.maf ?? nil
        map = partial.map ?? nil
        maxMAF = partial.maxMAF ?? nil
        o2 = OBD_O2(partial: partial.o2)
        o2Alt = OBD_O2Alt(partial: partial.o2Alt)
        o2WR = OBD_O2WR(partial: partial.o2WR)
        oilTemperature = partial.oilTemperature ?? nil
        pidsA = partial.pidsA ?? nil
        pidsB = partial.pidsB ?? nil
        pidsC = partial.pidsC ?? nil
        relativeAcceleratorPosition = partial.relativeAcceleratorPosition ?? nil
        relativeThrottlePosition = partial.relativeThrottlePosition ?? nil
        runTime = partial.runTime ?? nil
        runTimeMIL = partial.runTimeMIL ?? nil
        shortTermFuelTrim1 = partial.shortTermFuelTrim1 ?? nil
        shortTermFuelTrim2 = partial.shortTermFuelTrim2 ?? nil
        shortTermO2Trim1 = partial.shortTermO2Trim1 ?? nil
        shortTermO2Trim2 = partial.shortTermO2Trim2 ?? nil
        speed = partial.speed ?? nil
        status = OBD_Status(partial: partial.status)
        throttleActuator = partial.throttleActuator ?? nil
        throttlePosition = partial.throttlePosition ?? nil
        throttlePositionB = partial.throttlePositionB ?? nil
        throttlePositionC = partial.throttlePositionC ?? nil
        timeSinceDTCCleared = partial.timeSinceDTCCleared ?? nil
        timingAdvance = partial.timingAdvance ?? nil
        warmupsSinceDTCClear = partial.warmupsSinceDTCClear ?? nil
    }
}
