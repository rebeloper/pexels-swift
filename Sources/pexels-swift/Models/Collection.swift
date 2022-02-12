//
//  Collection.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

// MARK: - Collection
public struct Collection: Codable {
    public let id, title: String
    public let collectionDescription: String?
    public let collectionPrivate: Bool
    public let mediaCount, photosCount, videosCount: Int

    enum CodingKeys: String, CodingKey {
        case id, title
        case collectionDescription = "description"
        case collectionPrivate = "private"
        case mediaCount = "media_count"
        case photosCount = "photos_count"
        case videosCount = "videos_count"
    }
}
