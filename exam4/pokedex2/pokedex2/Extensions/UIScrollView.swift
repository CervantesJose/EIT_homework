//
//  UIScrollView.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

extension UIScrollView {
    var hasScrolledToBottom: Bool { contentSize.height - contentOffset.y < frame.size.height * 1.6 }
}
