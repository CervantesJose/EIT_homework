//
//  NSAttributedString.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

extension NSAttributedString {
    func drawText(in rect: CGRect) {
        let labelWidth: CGFloat = 55.0
        var textFrame = CGRect(x: 0.0, y: 1.0, width: labelWidth, height: rect.height)
        textFrame.origin.x = rect.width >= labelWidth ? rect.width - labelWidth : rect.width + 5.0
        draw(in: textFrame)
    }
}
