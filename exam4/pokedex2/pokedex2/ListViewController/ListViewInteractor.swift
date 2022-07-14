//
//  ListViewInteractor.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

protocol ListViewInteractable {
    func selectItem(at indexPath: IndexPath, in tableView: UITableView)
}

// MARK: -
final class ListViewInteractor: ListViewInteractable {
    
    // MARK: Private properties
    private let router: ListViewRoutable
    
    // MARK: - Init
    init(router: ListViewRoutable) {
        self.router = router
    }
    
    // MARK: - Public functions
    func selectItem(at indexPath: IndexPath, in tableView: UITableView) {
        guard let cell = tableView.cell(at: indexPath) as? RegularCell,
              let itemData = cell.data
        else { return }

        router.routeToItemList(with: itemData)
    }
}
