//
//  SearchController.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

final class SearchController: UISearchController {
    
    // MARK: Public properties
    override var preferredStatusBarStyle: UIStatusBarStyle { .lightContent }

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        obscuresBackgroundDuringPresentation = false
        searchBar.placeholder = "Search…"
        searchBar.tintColor = .pokedexRed
        searchBar.searchTextField.textColor = .black
        searchBar.searchTextField.keyboardAppearance = .dark
        searchBar.searchTextField.backgroundColor = .white
        searchBar.searchBarStyle = .prominent
        searchBar.isTranslucent = false
        searchBar.isOpaque = true
    }
}
