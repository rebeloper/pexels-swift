//
//  PexelsApp.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

public struct PexelsApp {
    
    public static var apiKey = ""
    public static var logLevel = PexelsLogLevel.off
    
    /// Configure your Pexels Appat the launch of your application
    /// - Parameters:
    ///   - apiKey: PExels API Key
    ///   - logLevel: pexels-swift log level; ``off`` by default
    public static func configure(apiKey: String, logLevel: PexelsLogLevel = .off) {
        self.apiKey = apiKey
        self.logLevel = logLevel
    }
}
