//
//  ItemListBuilder.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import Foundation

final class ListBuilder {
    
    static func build() -> NavigationController {
        let router = ListRouter()
        let interactor = ListViewInteractor(router: router)
        let viewController = ListViewController(interactor: interactor)
        let navigationController = NavigationController(rootViewController: viewController)
        router.navigationController = navigationController
        return navigationController
    }
}
