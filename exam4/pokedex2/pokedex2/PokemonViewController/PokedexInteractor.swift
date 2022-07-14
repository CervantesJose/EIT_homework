//
//  PokedexInteractor.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

protocol PokedexInteractable {
    func selectPokemon(at indexPath: IndexPath, in collectionView: UICollectionView)
}

// MARK: -
final class PokedexInteractor: PokedexInteractable {
    
    // MARK: Private properties
    private let router: PokedexRoutable
    
    // MARK: - Init
    init(router: PokedexRoutable) {
        self.router = router
    }
    
    // MARK: - Public functions
    func selectPokemon(at indexPath: IndexPath, in collectionView: UICollectionView) {
        guard let cell = collectionView.cell(at: indexPath) as? PokedexCell,
              let pokemon = cell.data,
              let color = cell.backgroundColor
        else { return }

        router.routeToDetailView(pokemon: pokemon, color: color)
    }
}
