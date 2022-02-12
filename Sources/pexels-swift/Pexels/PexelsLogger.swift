//
//  PexelsLogger.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

public struct PexelsLogger {
    
    public static func logResponse(_ response: HTTPURLResponse) {
        if PexelsApp.logLevel == .info || PexelsApp.logLevel == .debug {
            print("\(response.statusCode) - \(NetworkingError.init(errorCode: response.statusCode)) - \(response.url?.absoluteString ?? "nil url")")
        }
    }
    
    public static func logData(_ data: Data) {
        if PexelsApp.logLevel == .debug {
            print("\(data.prettyJSONString())")
        }
    }
    
    public static func logError(_ error: Error) {
        if PexelsApp.logLevel == .debug, let error = error as? DecodingError {
            print("\(error.description ?? "Unknown Error")")
        } else {
            print(error.localizedDescription)
        }
    }
}
