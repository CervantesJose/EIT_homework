//
//  CollectionCellConfigurations.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import Foundation

typealias CollectionCell = CollectionCellConfiguration<PokedexCell, PokemonDetails>

extension CollectionCellConfiguration {
    
    static func pokemonCell(from pokemon: PokemonDetails) -> CollectionCell {
        CollectionCell(data: pokemon)
    }
}
