//
//  TabBarController.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabbar()
    }
    
    // MARK: - Private functions
    private func setupTabbar() {
        tabBar.barTintColor = .darkGrey
        tabBar.tintColor = .pokedexRed
        tabBar.isTranslucent = false

        let pokedexView = PokedexViewBuilder.build()
        pokedexView.tabBarItem = .pokedex(title: pokedexView.title)

        let itemsView = ListBuilder.build()
        itemsView.tabBarItem = .items(title: itemsView.title)
        setViewControllers([pokedexView, itemsView], animated: false)
    }
}
