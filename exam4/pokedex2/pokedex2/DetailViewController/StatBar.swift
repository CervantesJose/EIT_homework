//
//  StatBar.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import UIKit

final class StatBar: UIView {
    
    // MARK: Private properties
    private var color: UIColor = .clear
    private var value: Int = 0
    private let maxValue: Int
    
    // MARK: - Init
    init(frame: CGRect = .zero, maxValue: Int = 100) {
        self.maxValue = maxValue
        super.init(frame: frame)
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    // MARK: - Draw
    override func draw(_ rect: CGRect) {
        let radius = rect.height / 2.0
        drawBackgroundPath(in: rect, radius: radius)
        
        var newRect = rect
        let maxVal: CGFloat = CGFloat(max(value, maxValue))
        newRect.size.width = (CGFloat(value) / maxVal) * rect.width
        drawProgress(in: newRect, radius: radius)
        drawText(in: newRect)
    }
    
    // MARK: - Public functions
    func configure(with item: StatItem) {
        value = item.value
        color = item.color
        setNeedsDisplay()
    }
    
    // MARK: - Private functions
    private func drawBackgroundPath(in rect: CGRect, radius: CGFloat) {
        let whitePath = UIBezierPath(roundedRect: rect, cornerRadius: radius)
        UIColor.darkGray.setFill()
        whitePath.fill()
    }
    
    private func drawProgress(in rect: CGRect, radius: CGFloat) {
        let progressPath = UIBezierPath(roundedRect: rect, cornerRadius: radius)
        color.setFill()
        progressPath.fill()
    }
    
    private func drawText(in rect: CGRect) {
        let attrs: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white]
        let string = NSAttributedString(string: "\(value)/\(max(value, maxValue))", attributes: attrs)
        string.drawText(in: rect)
    }
}
