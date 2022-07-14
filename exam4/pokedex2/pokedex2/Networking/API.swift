//
//  API.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import Foundation
import Combine

class API {
    static let baseURL = URL(string: "https://pokeapi.co/api/v2/")!
    static var cancellables = Set<AnyCancellable>()
    
    enum ItemType: String {
        case pokemons = "pokemon"
        case items = "item"
    }
}
