//
//  Photos.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

// MARK: - Photos
public struct Photos: Codable {
    public let totalResults, page, perPage: Int
    public let photos: [Photo]
    public let prevPage, nextPage: String?

    enum CodingKeys: String, CodingKey {
        case totalResults = "total_results"
        case page
        case perPage = "per_page"
        case photos
        case prevPage = "prev_page"
        case nextPage = "next_page"
    }
}
