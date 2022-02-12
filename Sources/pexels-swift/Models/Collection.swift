//
//  Collection.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

// MARK: - Collection
public struct Collection: Codable {
    let id, title: String
    let collectionDescription: String?
    let collectionPrivate: Bool
    let mediaCount, photosCount, videosCount: Int

    enum CodingKeys: String, CodingKey {
        case id, title
        case collectionDescription = "description"
        case collectionPrivate = "private"
        case mediaCount = "media_count"
        case photosCount = "photos_count"
        case videosCount = "videos_count"
    }
}
