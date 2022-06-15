//
//  Episode.swift
//  RickAndMortySwift
//
//  Created by Consultant on 6/15/22.
//

import Foundation

struct PagedEpisode: Codable {
	let info: Info
	let results: [Episode]
	}

struct Episode: Codable {
	let id: Int
	let name: String
	let episode: String
	let characters: [String]
	let url: String
	}