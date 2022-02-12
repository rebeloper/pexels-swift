//
//  MediaCollection.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

// MARK: - MediaCollection
struct MediaCollection: Codable {
    let id: String
    let media: [Media]
    let page, perPage, totalResults: Int
    let nextPage, prevPage: String?

    enum CodingKeys: String, CodingKey {
        case id, media, page
        case perPage = "per_page"
        case totalResults = "total_results"
        case nextPage = "next_page"
        case prevPage = "prev_page"
    }
}

// MARK: - Media
struct Media: Codable {
    let type: String
    let id, width, height: Int
    let url: String
    let photographer: String?
    let photographerURL: String?
    let photographerID: Int?
    let avgColor: String?
    let src: Src?
    let liked: Bool?
    let duration: Int?
    let fullRes: String?
    let tags: [String]?
    let image: String?
    let user: User?
    let videoFiles: [VideoFile]?
    let videoPictures: [VideoPicture]?

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
