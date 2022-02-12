//
//  PexelsRate.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

public struct PexelsRate {
    
    public static func save(_ response: HTTPURLResponse) {
        
        if let xRatelimitLimit = response.value(forHTTPHeaderField: PexelsRateLimit.X_Ratelimit_Limit.rawValue) {
            if PexelsApp.logLevel == .debug {
                print("\(PexelsRateLimit.X_Ratelimit_Limit.rawValue): \(xRatelimitLimit)")
            }
            UserDefaults.standard.set(xRatelimitLimit, forKey: PexelsRateLimit.X_Ratelimit_Limit.rawValue)
        }
        
        if let xRatelimitRemaining = response.value(forHTTPHeaderField: PexelsRateLimit.X_Ratelimit_Remaining.rawValue) {
            if PexelsApp.logLevel == .debug {
                print("\(PexelsRateLimit.X_Ratelimit_Remaining.rawValue): \(xRatelimitRemaining)")
                UserDefaults.standard.set(xRatelimitRemaining, forKey: PexelsRateLimit.X_Ratelimit_Remaining.rawValue)
            }
        }
        
        if let xRatelimitReset = response.value(forHTTPHeaderField: PexelsRateLimit.X_Ratelimit_Reset.rawValue) {
            if PexelsApp.logLevel == .debug {
                print("\(PexelsRateLimit.X_Ratelimit_Reset.rawValue): \(xRatelimitReset)")
                UserDefaults.standard.set(xRatelimitReset, forKey: PexelsRateLimit.X_Ratelimit_Reset.rawValue)
            }
        }
    }
    
}
