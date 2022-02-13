//
//  Pexels.swift
//  
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

public struct Pexels<T: Codable> {
    
    /// Gets an object from the Pexels API ``https://www.pexels.com/api``
    /// - Parameter route: Route of the call
    /// - Returns: a Codable object
    public static func get(_ route: PexelsURLRoute) async throws -> T {
        let urlRequest = try PexelsUrlRequest.create(for: route)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard let response = response as? HTTPURLResponse else {
            throw NSError(domain: "Response is not of type HTTPURLResponse", code: -1)
        }
        
        PexelsLogger.logResponse(response)
        
        guard (200...299).contains(response.statusCode) else {
            throw NSError(domain: "\(NetworkingError.init(errorCode: response.statusCode))", code: response.statusCode)
        }
        
        PexelsRate.save(response)
        PexelsLogger.logData(data)
        
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            PexelsLogger.logError(error)
            throw error
        }
    }
    
}
