//
//  Collections.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

// MARK: - Collections
public struct Collections: Codable {
    let collections: [Collection]
    let page, perPage, totalResults: Int
    let prevPage, nextPage: String?

    enum CodingKeys: String, CodingKey {
        case collections, page
        case perPage = "per_page"
        case totalResults = "total_results"
        case nextPage = "next_page"
        case prevPage = "prev_page"
    }
}
