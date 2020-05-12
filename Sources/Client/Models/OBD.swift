//
//  OBD.swift
//  HMVssGraphQLClient
//
//  Generated by HMVssGraphQLClient on 16.02.20.
//  Copyright © 2020 High Mobility GmbH. All rights reserved.
//

import Artemis
import Foundation


public class OBD: Object, ObjectSchema {

    /// PID 43 - Absolute load value
    public var absoluteLoad = Field<Int?, NoArguments>("absoluteLoad")

    /// PID 49 - Accelerator pedal position D
    public var acceleratorPositionD = Field<Int?, NoArguments>("acceleratorPositionD")

    /// PID 4A - Accelerator pedal position E
    public var acceleratorPositionE = Field<Int?, NoArguments>("acceleratorPositionE")

    /// PID 4B - Accelerator pedal position F
    public var acceleratorPositionF = Field<Int?, NoArguments>("acceleratorPositionF")

    /// PID 12 - Secondary air status
    public var airStatus = Field<String?, NoArguments>("airStatus")

    /// PID 46 - Ambient air temperature
    public var ambientAirTemperature = Field<Float?, NoArguments>("ambientAirTemperature")

    /// PID 1E - Auxiliary input status (power take off)
    public var auxInputStatus = Field<Bool?, NoArguments>("auxInputStatus")

    /// PID 33 - Barometric pressure
    public var barometricPressure = Field<Float?, NoArguments>("barometricPressure")

    public var catalyst = Field<OBDCatalyst?, NoArguments>("catalyst")

    /// PID 2C - Commanded exhaust gas recirculation (EGR)
    public var commandedEGR = Field<Int?, NoArguments>("commandedEGR")

    /// PID 2E - Commanded evaporative purge (EVAP) valve
    public var commandedEVAP = Field<Int?, NoArguments>("commandedEVAP")

    /// PID 44 - Commanded equivalence ratio
    public var commandedEquivalenceRatio = Field<Float?, NoArguments>("commandedEquivalenceRatio")

    /// PID 42 - Control module voltage
    public var controlModuleVoltage = Field<Float?, NoArguments>("controlModuleVoltage")

    /// PID 05 - Coolant temperature
    public var coolantTemperature = Field<Float?, NoArguments>("coolantTemperature")

    /// PID 31 - Distance traveled since codes cleared
    public var distanceSinceDTCClear = Field<Float?, NoArguments>("distanceSinceDTCClear")

    /// PID 21 - Distance traveled with MIL on
    public var distanceWithMIL = Field<Float?, NoArguments>("distanceWithMIL")

    public var driveCycleStatus = Field<OBDDriveCycleStatus?, NoArguments>("driveCycleStatus")

    /// PID 2D - Exhaust gas recirculation (EGR) error
    public var egrError = Field<Int?, NoArguments>("egrError")

    /// PID 32 - Evaporative purge (EVAP) system pressure
    public var evapVaporPressure = Field<Float?, NoArguments>("evapVaporPressure")

    /// PID 53 - Absolute evaporative purge (EVAP) system pressure
    public var evapVaporPressureAbsolute = Field<Float?, NoArguments>("evapVaporPressureAbsolute")

    /// PID 54 - Alternate evaporative purge (EVAP) system pressure
    public var evapVaporPressureAlternate = Field<Float?, NoArguments>("evapVaporPressureAlternate")

    /// PID 04 - Engine load in percent - 0 = no load, 100 = full load
    public var engineLoad = Field<Int?, NoArguments>("engineLoad")

    /// PID 0C - Engine speed measured as rotations per minute
    public var engineSpeed = Field<Float?, NoArguments>("engineSpeed")

    /// PID 52 - Percentage of ethanol in the fuel
    public var ethanolPercent = Field<Int?, NoArguments>("ethanolPercent")

    /// PID 02 - DTC that triggered the freeze frame
    public var freezeDTC = Field<String?, NoArguments>("freezeDTC")

    /// PID 5D - Fuel injection timing
    public var fuelInjectionTiming = Field<Int?, NoArguments>("fuelInjectionTiming")

    /// PID 2F - Fuel level in the fuel tank
    public var fuelLevel = Field<Int?, NoArguments>("fuelLevel")

    /// PID 0A - Fuel pressure
    public var fuelPressure = Field<Float?, NoArguments>("fuelPressure")

    /// PID 59 - Absolute fuel rail pressure
    public var fuelRailPressureAbsolute = Field<Float?, NoArguments>("fuelRailPressureAbsolute")

    /// PID 23 - Fuel rail pressure direct inject
    public var fuelRailPressureDirect = Field<Float?, NoArguments>("fuelRailPressureDirect")

    /// PID 22 - Fuel rail pressure relative to vacuum
    public var fuelRailPressureVac = Field<Float?, NoArguments>("fuelRailPressureVac")

    /// PID 5E - Engine fuel rate
    public var fuelRate = Field<Float?, NoArguments>("fuelRate")

    /// PID 03 - Fuel status
    public var fuelStatus = Field<String?, NoArguments>("fuelStatus")

    /// PID 51 - Fuel type
    public var fuelType = Field<String?, NoArguments>("fuelType")

    /// PID 5B - Remaining life of hybrid battery
    public var hybridBatteryRemaining = Field<Int?, NoArguments>("hybridBatteryRemaining")

    /// PID 0F - Intake temperature
    public var intakeTemp = Field<Float?, NoArguments>("intakeTemp")

    /// PID 07 - Long Term (learned) Fuel Trim - Bank 1 - negative percent leaner, positive percent richer
    public var longTermFuelTrim1 = Field<Int?, NoArguments>("longTermFuelTrim1")

    /// PID 09 - Long Term (learned) Fuel Trim - Bank 2 - negative percent leaner, positive percent richer
    public var longTermFuelTrim2 = Field<Int?, NoArguments>("longTermFuelTrim2")

    /// PID 56 - Long term secondary O2 trim - Bank 1
    public var longTermO2Trim1 = Field<Int?, NoArguments>("longTermO2Trim1")

    /// PID 58 - Long term secondary O2 trim - Bank 2
    public var longTermO2Trim2 = Field<Int?, NoArguments>("longTermO2Trim2")

    /// PID 10 - Grams of air drawn into engine per second
    public var maf = Field<Int?, NoArguments>("maf")

    /// PID 0B - Intake manifold pressure
    public var map = Field<Float?, NoArguments>("map")

    /// PID 50 - Maximum flow for mass air flow sensor
    public var maxMAF = Field<Float?, NoArguments>("maxMAF")

    public var o2 = Field<OBDO2?, NoArguments>("o2")

    public var o2Alt = Field<OBDO2Alt?, NoArguments>("o2Alt")

    public var o2WR = Field<OBDO2WR?, NoArguments>("o2WR")

    /// PID 5C - Engine oil temperature
    public var oilTemperature = Field<Int?, NoArguments>("oilTemperature")

    /// PID 00 - Bit array of the supported pids 01 to 20
    public var pidsA = Field<Float?, NoArguments>("pidsA")

    /// PID 20 - Bit array of the supported pids 21 to 40
    public var pidsB = Field<Float?, NoArguments>("pidsB")

    /// PID 40 - Bit array of the supported pids 41 to 60
    public var pidsC = Field<Float?, NoArguments>("pidsC")

    /// PID 5A - Relative accelerator pedal position
    public var relativeAcceleratorPosition = Field<Int?, NoArguments>("relativeAcceleratorPosition")

    /// PID 45 - Relative throttle position
    public var relativeThrottlePosition = Field<Int?, NoArguments>("relativeThrottlePosition")

    /// PID 1F - Engine run time
    public var runTime = Field<Float?, NoArguments>("runTime")

    /// PID 4D - Run time with MIL on
    public var runTimeMIL = Field<Float?, NoArguments>("runTimeMIL")

    /// PID 06 - Short Term (immediate) Fuel Trim - Bank 1 - negative percent leaner, positive percent richer
    public var shortTermFuelTrim1 = Field<Int?, NoArguments>("shortTermFuelTrim1")

    /// PID 08 - Short Term (immediate) Fuel Trim - Bank 2 - negative percent leaner, positive percent richer
    public var shortTermFuelTrim2 = Field<Int?, NoArguments>("shortTermFuelTrim2")

    /// PID 55 - Short term secondary O2 trim - Bank 1
    public var shortTermO2Trim1 = Field<Int?, NoArguments>("shortTermO2Trim1")

    /// PID 57 - Short term secondary O2 trim - Bank 2
    public var shortTermO2Trim2 = Field<Int?, NoArguments>("shortTermO2Trim2")

    /// PID 0D - Vehicle speed
    public var speed = Field<Float?, NoArguments>("speed")

    public var status = Field<OBDStatus?, NoArguments>("status")

    /// PID 4C - Commanded throttle actuator
    public var throttleActuator = Field<Int?, NoArguments>("throttleActuator")

    /// PID 11 - Throttle position - 0 = closed throttle, 100 = open throttle
    public var throttlePosition = Field<Int?, NoArguments>("throttlePosition")

    /// PID 47 - Absolute throttle position B
    public var throttlePositionB = Field<Int?, NoArguments>("throttlePositionB")

    /// PID 48 - Absolute throttle position C
    public var throttlePositionC = Field<Int?, NoArguments>("throttlePositionC")

    /// PID 4E - Time since trouble codes cleared
    public var timeSinceDTCCleared = Field<Float?, NoArguments>("timeSinceDTCCleared")

    /// PID 0E - Time advance
    public var timingAdvance = Field<Float?, NoArguments>("timingAdvance")

    /// PID 30 - Number of warm-ups since codes cleared
    public var warmupsSinceDTCClear = Field<Int?, NoArguments>("warmupsSinceDTCClear")

    public required init() { }
}
