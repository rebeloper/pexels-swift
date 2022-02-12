//
//  PexelsRateLimit.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

public enum PexelsRateLimit: String {
    case X_Ratelimit_Limit = "X-Ratelimit-Limit"
    case X_Ratelimit_Remaining = "X-Ratelimit-Remaining"
    case X_Ratelimit_Reset = "X-Ratelimit-Reset"
}
