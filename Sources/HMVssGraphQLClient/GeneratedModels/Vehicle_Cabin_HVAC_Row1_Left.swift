import Artemis

/*
 This file was generated by Artemis for the following GraphQL object:

    type Vehicle_Cabin_HVAC_Row1_Left {
     """
     Direction of airstream
     """
     airDistribution: Vehicle_Cabin_HVAC_Row1_Left_AirDistribution_Enum
     """
     Fan Speed, 0 = off. 100 = max
     """
     fanSpeed: Int
     """
     Temperature
     """
     temperature: Int
   }
*/

final class Vehicle_Cabin_HVAC_Row1_Left: Object, ObjectSchema {

    /**
    Direction of airstream
    */
    var airDistribution = Field<Vehicle_Cabin_HVAC_Row1_Left_AirDistribution_Enum?, NoArguments>("airDistribution")

    /**
    Fan Speed, 0 = off. 100 = max
    */
    var fanSpeed = Field<Int?, NoArguments>("fanSpeed")

    /**
    Temperature
    */
    var temperature = Field<Int?, NoArguments>("temperature")

}


public class Cabin_HVAC_Row1_Left: Model {

    typealias PartialType = Vehicle_Cabin_HVAC_Row1_Left

    public let airDistribution: Cabin_HVAC_Row1_Left_AirDistribution_Enum?
    public let fanSpeed: Int?
    public let temperature: Int?

    required init?(partial: Partial<PartialType?>) {
        airDistribution = partial.airDistribution ?? nil
        fanSpeed = partial.fanSpeed ?? nil
        temperature = partial.temperature ?? nil
    }
}
