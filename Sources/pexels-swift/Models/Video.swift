//
//  Video.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

// MARK: - Video
public struct Video: Codable {
    public let id, width, height: Int
    public let url: String
    public let image: String
    public let duration: Int
    public let user: User
    public let videoFiles: [VideoFile]
    public let videoPictures: [VideoPicture]

    enum CodingKeys: String, CodingKey {
        case id, width, height, url, image, duration, user
        case videoFiles = "video_files"
        case videoPictures = "video_pictures"
    }
}

// MARK: - User
public struct User: Codable {
    public let id: Int
    public let name: String
    public let url: String
}

// MARK: - VideoFile
public struct VideoFile: Codable {
    public let id: Int
    public let quality, fileType: String
    public let width, height: Int?
    public let link: String

    enum CodingKeys: String, CodingKey {
        case id, quality
        case fileType = "file_type"
        case width, height, link
    }
}

// MARK: - VideoPicture
public struct VideoPicture: Codable {
    public let id: Int
    public let picture: String
    public let nr: Int
}

