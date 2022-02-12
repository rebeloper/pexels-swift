//
//  Photo.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

// MARK: - Photo
public struct Photo: Codable {
    public let id, width, height: Int
    public let url: String
    public let photographer: String
    public let photographerURL: String
    public let photographerID: Int
    public let avgColor: String
    public let src: Src
    public let liked: Bool
    public let alt: String

    enum CodingKeys: String, CodingKey {
        case id, width, height, url, photographer
        case photographerURL = "photographer_url"
        case photographerID = "photographer_id"
        case avgColor = "avg_color"
        case src, liked, alt
    }
}

// MARK: - Src
public struct Src: Codable {
    public let original, large2X, large, medium: String
    public let small, portrait, landscape, tiny: String

    enum CodingKeys: String, CodingKey {
        case original
        case large2X = "large2x"
        case large, medium, small, portrait, landscape, tiny
    }
}
