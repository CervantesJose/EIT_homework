//
//  NetworkAgent.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import Foundation
import Combine

struct NetworkAgent {
    static func execute<T: Decodable>(_ request: URLRequest, logJSON: Bool = false) -> AnyPublisher<T, Error> {
        URLSession.shared.dataTaskPublisher(for: request)
            .tryMap {
                if logJSON { print($0.data.prettyJSON ?? "no json") }
                return $0.data
            }
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
