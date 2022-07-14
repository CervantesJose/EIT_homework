//
//  Movie.swift
//  tmdbAPI
//
//  Created by Consultant on 6/16/22.
//

import Foundation

struct MoviesData: Decodable {
    let movies: [Movie]
    
    enum CodingKeys: String, CodingKey {
        case movies = "results"
    }
}

struct Movie: Decodable {
    let title: String?
    let year: String?
    let rating: Double?
    let posterImage: String?
    let overview: String?
    
    enum CodingKeys: String, CodingKey {
        case title, overview
        case year = "release_date"
        case rating = "vote_average"
        case posterImage = "poster_path"
    }
}
