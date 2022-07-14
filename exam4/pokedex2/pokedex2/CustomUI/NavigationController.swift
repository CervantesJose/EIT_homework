//
//  NavigationController.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

final class NavigationController: UINavigationController {
    
    // MARK: Public properties
    override var childForStatusBarStyle: UIViewController? {
        topViewController?.childForStatusBarStyle ?? topViewController
    }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBar.barTintColor = .pokedexRed
        navigationBar.isTranslucent = false
        navigationBar.tintColor = .white
    }
}
