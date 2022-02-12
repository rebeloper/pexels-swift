//
//  Video.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

// MARK: - Video
public struct Video: Codable {
    let id, width, height: Int
    let url: String
    let image: String
    let duration: Int
    let user: User
    let videoFiles: [VideoFile]
    let videoPictures: [VideoPicture]

    enum CodingKeys: String, CodingKey {
        case id, width, height, url, image, duration, user
        case videoFiles = "video_files"
        case videoPictures = "video_pictures"
    }
}

// MARK: - User
public struct User: Codable {
    let id: Int
    let name: String
    let url: String
}

// MARK: - VideoFile
public struct VideoFile: Codable {
    let id: Int
    let quality, fileType: String
    let width, height: Int?
    let link: String

    enum CodingKeys: String, CodingKey {
        case id, quality
        case fileType = "file_type"
        case width, height, link
    }
}

// MARK: - VideoPicture
public struct VideoPicture: Codable {
    let id: Int
    let picture: String
    let nr: Int
}

