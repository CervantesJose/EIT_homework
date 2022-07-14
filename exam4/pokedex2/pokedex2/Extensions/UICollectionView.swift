//
//  UICollectionView.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

extension UICollectionView {
    static let footer = UICollectionView.elementKindSectionFooter
    
    func cell<Cell: UICollectionViewCell>(at indexPath: IndexPath) -> Cell? {
        cellForItem(at: indexPath) as? Cell
    }
    
    func registerCell<Cell: UICollectionViewCell>(_ cell: Cell.Type) {
        register(cell.self, forCellWithReuseIdentifier: String(describing: cell))
    }

    func registerReusableFooter<View: UICollectionReusableView>(view: View.Type) {
        register(view.self, forSupplementaryViewOfKind: UICollectionView.footer, withReuseIdentifier: String(describing: view))
    }
    
    func dequeueReusableView<View: UICollectionReusableView>(ofKind kind: String, at indexPath: IndexPath) -> View {
        dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: String(describing: View.self), for: indexPath) as! View
    }
    
    func dequeueCell<Cell: UICollectionViewCell>(for item: CollectionCellConfigurator, at indexPath: IndexPath) -> Cell {
        dequeueReusableCell(withReuseIdentifier: type(of: item).reuseId, for: indexPath) as! Cell
    }
}
