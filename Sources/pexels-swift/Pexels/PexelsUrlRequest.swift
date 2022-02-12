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
        components.queryItems = PexelsURLRoute.queryItems(for: route)
        guard let url = components.url else { throw NSError(domain: "Bad url: \(String(describing: components.url))", code: 0) }
        var urlReques = URLRequest(url: url)
        urlReques.setValue(PexelsApp.apiKey, forHTTPHeaderField: "Authorization")
        return urlReques
    }
}
