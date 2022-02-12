//
//  PexelsUrlRequest.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

public struct PexelsUrlRequest {
    
    public static func create(for route: PexelsURLRoute) throws -> URLRequest {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.pexels.com"
        components.path = PexelsURLRoute.path(for: route)
        let queryItems = PexelsURLRoute.queryItems(for: route)
        if queryItems.count != 0 {
            components.queryItems = queryItems
        }
        guard let url = components.url else { throw NSError(domain: "Bad url: \(String(describing: components.url))", code: 0) }
        var urlReques = URLRequest(url: url)
        urlReques.setValue(PexelsApp.apiKey, forHTTPHeaderField: "Authorization")
        return urlReques
    }
}
