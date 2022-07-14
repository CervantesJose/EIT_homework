//
//  Publisher.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import Combine

extension Publisher {
    func sink(to result: @escaping (Result<Output, Failure>) -> Void) -> AnyCancellable {
        sink { completion in
            switch completion {
            case let .failure(error): result(.failure(error))
            case .finished: break
            }
        } receiveValue: { value in
            result(.success(value))
        }
    }
}
