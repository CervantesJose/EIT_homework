//
//  DetailViewModel.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

extension DetailViewController {

    // MARK: -
    struct ViewModel {
        
        // MARK: Public properties
        let pokemon: PokemonDetails
        let color: UIColor

        var id: String { "#\(pokemon.id)" }
        var title: String { pokemon.name.capitalized }
        var isLight: Bool { color.isLight }
        var spriteURL: String { pokemon.sprite.url }
    }
}
