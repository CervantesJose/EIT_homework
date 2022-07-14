//
//  CGSize.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

extension CGSize {
    static func cellSize(from collectionView: UICollectionView) -> CGSize {
        let size = (collectionView.bounds.width - 60) / 2
        return CGSize(width: size, height: size)
    }
}
