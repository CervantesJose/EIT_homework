//
//  UITabBarItem.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

extension UITabBarItem {
    static func pokedex(title: String?) -> UITabBarItem {
        UITabBarItem(title: title, image: .pokedex, tag: 0)
    }
    
    static func items(title: String?) -> UITabBarItem {
        UITabBarItem(title: title, image: .items, tag: 1)
    }
}
