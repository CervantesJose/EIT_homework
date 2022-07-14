//
//  PokedexViewRouter.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

protocol PokedexRoutable {
    func routeToDetailView(pokemon: PokemonDetails, color: UIColor)
}

// MARK: -
final class PokedexRouter: PokedexRoutable {
    
    // MARK: Public properties
    weak var navigationController: UINavigationController?
    
    // MARK: - Public functions
    func routeToDetailView(pokemon: PokemonDetails, color: UIColor) {
        let detailView = DetailViewBuilder.build(from: pokemon, withColor: color)
        navigationController?.pushViewController(detailView, animated: true)
    }
}
