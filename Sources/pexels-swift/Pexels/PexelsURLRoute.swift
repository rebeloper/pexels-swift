//
//  PexelsURLRoute.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

public enum PexelsURLRoute {
    
    case photo(id: Int)
    case searchedPhotos(query: String, orientation: PexelsPhotoOrientation?, size: PexelsPhotoSize?, color: PexelsPhotoColor?, locale: PexelsPhotoLocale?, page: Int?, perPage: Int?)
    case curatedPhotos(page: Int?, perPage: Int?)
    case video(id: Int)
    case searchedVideos(query: String, orientation: PexelsVideoOrientation?, size: PexelsVideoSize?, locale: PexelsVideoLocale?, page: Int?, perPage: Int?)
    case popularVideos(minWidth: Int?, minHeight: Int?, minDuration: Int?, maxDuration: Int?, page: Int?, perPage: Int?)
    case featuredCollections(page: Int?, perPage: Int?)
    case myCollections(page: Int?, perPage: Int?)
    case mediaCollection(id: String, type: PexelsMediaType?, page: Int?, perPage: Int?)
    
    static func path(for route: PexelsURLRoute) -> String {
        switch route {
        case .photo(let id):
            return "/v1/photos/\(id)"
            
        case searchedPhotos(_, _, _, _, _, _, _):
            return "/v1/search"
            
        case curatedPhotos(_, _):
            return "/v1/curated"
            
        case .video(let id):
            return "/videos/videos/\(id)"
            
        case searchedVideos(_, _, _, _, _, _):
            return "/videos/search"
            
        case popularVideos(_, _, _, _, _, _):
            return "/videos/popular"
            
        case featuredCollections(_, _):
            return "/v1/collections/featured"
            
        case myCollections(_, _):
            return "/v1/collections"
            
        case mediaCollection(let id, _, _, _):
            return "/v1/collections/\(id)"
        }
    }
    
    static func queryItems(for route: PexelsURLRoute) -> [URLQueryItem] {
        switch route {
        case .photo(_):
            return []
            
        case searchedPhotos(let query, let orientation, let size, let color, let locale, let page, let perPage):
            var queryItems = [URLQueryItem(name: "query", value: query)]
            if let orientation = orientation {
                queryItems.append(URLQueryItem(name: "orientation", value: "\(orientation.rawValue)"))
            }
            
            if let size = size {
                queryItems.append(URLQueryItem(name: "size", value: "\(size.rawValue)"))
            }
            
            if let color = color {
                switch color {
                case .base(let base):
                    queryItems.append(URLQueryItem(name: "color", value: "\(base.rawValue)"))
                case .hex(let hex):
                    queryItems.append(URLQueryItem(name: "color", value: "#\(hex)"))
                }
            }
            
            if let locale = locale {
                queryItems.append(URLQueryItem(name: "locale", value: "\(locale.rawValue)"))
            }
            
            if let page = page {
                var page = page
                if page >= 80 {
                    page = 80
                }
                queryItems.append(URLQueryItem(name: "page", value: "\(page)"))
            }
            
            if let perPage = perPage {
                queryItems.append(URLQueryItem(name: "per_page", value: "\(perPage)"))
            }
            return queryItems
            
        case curatedPhotos(let page, let perPage):
            var queryItems = [URLQueryItem]()
            
            if let page = page {
                var page = page
                if page >= 80 {
                    page = 80
                }
                queryItems.append(URLQueryItem(name: "page", value: "\(page)"))
            }
            
            if let perPage = perPage {
                queryItems.append(URLQueryItem(name: "per_page", value: "\(perPage)"))
            }
            return queryItems
            
        case .video(_):
            return []
            
        case searchedVideos(let query, let orientation, let size, let locale, let page, let perPage):
            var queryItems = [URLQueryItem(name: "query", value: query)]
            if let orientation = orientation {
                queryItems.append(URLQueryItem(name: "orientation", value: "\(orientation.rawValue)"))
            }
            
            if let size = size {
                queryItems.append(URLQueryItem(name: "size", value: "\(size.rawValue)"))
            }
            
            if let locale = locale {
                queryItems.append(URLQueryItem(name: "locale", value: "\(locale.rawValue)"))
            }
            
            if let page = page {
                var page = page
                if page >= 80 {
                    page = 80
                }
                queryItems.append(URLQueryItem(name: "page", value: "\(page)"))
            }
            
            if let perPage = perPage {
                queryItems.append(URLQueryItem(name: "per_page", value: "\(perPage)"))
            }
            return queryItems
            
        case popularVideos(let minWidth, let minHeight, let minDuration, let maxDuration, let page, let perPage):
            var queryItems = [URLQueryItem]()
            
            if let minWidth = minWidth {
                queryItems.append(URLQueryItem(name: "min_width", value: "\(minWidth)"))
            }
            
            if let minHeight = minHeight {
                queryItems.append(URLQueryItem(name: "min_height", value: "\(minHeight)"))
            }
            
            if let minDuration = minDuration {
                queryItems.append(URLQueryItem(name: "min_duration", value: "\(minDuration)"))
            }
            
            if let maxDuration = maxDuration {
                queryItems.append(URLQueryItem(name: "max_duration", value: "\(maxDuration)"))
            }
            
            if let page = page {
                var page = page
                if page >= 80 {
                    page = 80
                }
                queryItems.append(URLQueryItem(name: "page", value: "\(page)"))
            }
            
            if let perPage = perPage {
                queryItems.append(URLQueryItem(name: "per_page", value: "\(perPage)"))
            }
            return queryItems
            
        case featuredCollections(let page, let perPage):
            var queryItems = [URLQueryItem]()
            
            if let page = page {
                var page = page
                if page >= 80 {
                    page = 80
                }
                queryItems.append(URLQueryItem(name: "page", value: "\(page)"))
            }
            
            if let perPage = perPage {
                queryItems.append(URLQueryItem(name: "per_page", value: "\(perPage)"))
            }
            return queryItems
            
        case myCollections(let page, let perPage):
            var queryItems = [URLQueryItem]()
            
            if let page = page {
                var page = page
                if page >= 80 {
                    page = 80
                }
                queryItems.append(URLQueryItem(name: "page", value: "\(page)"))
            }
            
            if let perPage = perPage {
                queryItems.append(URLQueryItem(name: "per_page", value: "\(perPage)"))
            }
            return queryItems
            
        case mediaCollection(_, let type, let page, let perPage):
            var queryItems = [URLQueryItem]()
            
            if let type = type {
                queryItems.append(URLQueryItem(name: "type", value: "\(type.rawValue)"))
            }
            
            if let page = page {
                var page = page
                if page >= 80 {
                    page = 80
                }
                queryItems.append(URLQueryItem(name: "page", value: "\(page)"))
            }
            
            if let perPage = perPage {
                queryItems.append(URLQueryItem(name: "per_page", value: "\(perPage)"))
            }
            return queryItems
        }
    }
}
