//
//  Videos.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

// MARK: - Videos
public struct Videos: Codable {
    public let totalResults, page, perPage: Int
    public let videos: [Video]
    public let prevPage, nextPage: String?

    enum CodingKeys: String, CodingKey {
        case totalResults = "total_results"
        case page
        case perPage = "per_page"
        case videos
        case prevPage = "prev_page"
        case nextPage = "next_page"
    }
}
