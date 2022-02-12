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
    
    public static func configure(apiKey: String, logLevel: PexelsLogLevel = .off) {
        self.apiKey = apiKey
        self.logLevel = logLevel
    }
}
