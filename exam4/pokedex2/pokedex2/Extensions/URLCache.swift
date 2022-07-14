//
//  URLCache.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

extension URLCache {
    
    func cacheImage(from output: URLSession.DataTaskPublisher.Output, for request: URLRequest) {
        let cachedImage = CachedURLResponse(response: output.response, data: output.data)
        storeCachedResponse(cachedImage, for: request)
    }
    
    func image(from request: URLRequest) -> UIImage? {
        guard let data = cachedResponse(for: request)?.data,
              let image = UIImage(data: data)
        else { return nil }
        
        return image
    }
}
