//
//  UILabel.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

extension UILabel {
    static var accessoryView: UILabel {
        let label = UILabel()
        label.textColor = .white
        label.text = ">"
        label.sizeToFit()
        return label
    }
}
