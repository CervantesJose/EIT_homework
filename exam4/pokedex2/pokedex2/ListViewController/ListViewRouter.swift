//
//  ListViewRouter.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

protocol ListViewRoutable {
    func routeToItemList(with data: ItemData)
}

// MARK: -
final class ListRouter: ListViewRoutable {
    
    // MARK: Public properties
    weak var navigationController: UINavigationController?
    
    // MARK: - Public functions
    func routeToItemList(with data: ItemData) {
        let view = ItemsViewBuilder.build(with: data)
        navigationController?.pushViewController(view, animated: true)
    }
}
