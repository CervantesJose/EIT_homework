//
//  ItemsViewModel.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

extension ItemsViewController {
    
    // MARK: -
    struct ViewModel {
        let title: String?
        var cleanTitle: String? { title?.cleaned }
    }
}
