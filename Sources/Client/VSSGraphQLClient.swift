//
// Hello fellow human
//

@_exported import Artemis
import Foundation


public typealias Operation = Artemis.Operation<VehicleQuery, Partial<Vehicle>>


public class VSSGraphQLClient {
    
    public let url: URL


    public func execute(operation: Operation, completion: @escaping (Result<Partial<Vehicle>, GraphQLError>) -> Void) {
         let client = Client<VehicleQuery>(endpoint: url)

        client.perform(operation) { result in
            switch result {
            case .failure(let error):
                completion(.failure(error))

            case .success(let vehicle):
                completion(.success(vehicle))
            }
        }
    }


    public init(url: URL) {
        self.url = url
    }
}
