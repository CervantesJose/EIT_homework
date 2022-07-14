//
//  APIModel.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import Foundation

struct APIResponse: Decodable {
    let next: String
    let results: [APIItem]
}

struct APIItem: Decodable {
    let name: String
    let url: String
}
