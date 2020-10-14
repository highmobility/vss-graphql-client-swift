//
//  VSSGraphQLRequest.swift
//  Client
//
//  Created by Mikk Rätsep on 12.05.20.
//

@_exported import AutoGraphQL

import Alamofire
import Foundation
import JSONValueRX


public class VSSGraphQLRequest<Type>: AutoGraphQL.Request where Type: GraphQLType {

    /// Send the GraphQL request.
    ///
    /// - Parameters:
    ///   - url: The URL for the GraphQL-endpoint
    ///   - completion: Block called when a response is received
    public func send(url: URL, completion: @escaping (Result<Type, Error>) -> Void) {
        let client = AlamofireClient(url: url, session: .default)
        let autoGraph = AutoGraph(client: client)

        autoGraph.send(self, completion: completion)
    }


    /// Initialise GraphQL request.
    ///
    /// All *rootKeyPath*-s start with **"data."** and then follow the iVar path, in example:
    /// - for type `Vehicle` it's **"data.vehicle"**
    /// - for type `DrivetrainBatteryManagement` it's **"data.vehicle.drivetrain.batteryManagement"**
    ///
    /// - parameters:
    ///     - operation: The `AutoGraphQL.Operation` defining the query
    ///     - rootKeyPath: The root path of the model to decode
    public init(operation: VSSGraphQLOperation, rootKeyPath: String) {
        self.queryDocument = operation
        self.rootKeyPath = rootKeyPath
    }


    // MARK: Request

    public let queryDocument: VSSGraphQLOperation
    public let rootKeyPath: String
    public let variables: [AnyHashable : Any]? = nil

    public func willSend() throws { }
    public func didFinishRequest(response: HTTPURLResponse?, json: JSONValue) throws { }
    public func didFinish(result: AutoGraphResult<Type>) throws { }
}
