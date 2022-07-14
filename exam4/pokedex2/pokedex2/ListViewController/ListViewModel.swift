//
//  ListViewModel.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

extension ListViewController {
    
    // MARK: -
    final class ViewModel: ViewModelProtocol {
        
        // MARK: Public properties
        var title: String { "Items" }
        var items = [ItemDetails]()
        
        // MARK: - Public functions
        func requestData(_ completion: @escaping (Result<UITableView.DataSource, Error>) -> Void) {
            ItemAPI.allItems { result in
                switch result {
                case let .success(items):
                    self.items = items
                    
                    let tableData: UITableView.DataSource = .itemsDataSource(from: items)
                    DispatchQueue.main.async { completion(.success(tableData)) }
                    
                case let .failure(error):
                    DispatchQueue.main.async { completion(.failure(error)) }
                }
            }
        }
    }
}
