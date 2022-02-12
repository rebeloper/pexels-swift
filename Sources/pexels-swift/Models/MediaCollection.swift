//
//  MediaCollection.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

// MARK: - MediaCollection
public struct MediaCollection: Codable {
    public let id: String
    public let media: [Media]
    public let page, perPage, totalResults: Int
    public let nextPage, prevPage: String?

    enum CodingKeys: String, CodingKey {
        case id, media, page
        case perPage = "per_page"
        case totalResults = "total_results"
        case nextPage = "next_page"
        case prevPage = "prev_page"
    }
}

// MARK: - Media
public struct Media: Codable {
    public let type: String
    public let id, width, height: Int
    public let url: String
    public let photographer: String?
    public let photographerURL: String?
    public let photographerID: Int?
    public let avgColor: String?
    public let src: Src?
    public let liked: Bool?
    public let duration: Int?
    public let fullRes: String?
    public let tags: [String]?
    public let image: String?
    public let user: User?
    public let videoFiles: [VideoFile]?
    public let videoPictures: [VideoPicture]?

    enum CodingKeys: String, CodingKey {
        case type, id, width, height, url, photographer
        case photographerURL = "photographer_url"
        case photographerID = "photographer_id"
        case avgColor = "avg_color"
        case src, liked, duration
        case fullRes = "full_res"
        case tags, image, user
        case videoFiles = "video_files"
        case videoPictures = "video_pictures"
    }
}
