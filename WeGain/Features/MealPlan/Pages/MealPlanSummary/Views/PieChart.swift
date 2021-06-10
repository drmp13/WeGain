//
//  PieChart.swift
//  WeGain
//
//  Created by Kendra Arsena Wijaya on 09/06/21.
//

import UIKit

@IBDesignable
class PieChart: UIView {
    @IBInspectable var color: UIColor = .red
    @IBInspectable var ringWidth: CGFloat = 16
    
    private var backgroundMask = CAShapeLayer()
    
    override func draw(_ rect: CGRect) {
        backgroundMask.path = UIBezierPath(ovalIn: rect.insetBy(dx: ringWidth / 2, dy: ringWidth / 2)).cgPath
        backgroundMask.lineWidth = ringWidth
        backgroundMask.fillColor = nil
        backgroundMask.strokeColor = UIColor.black.cgColor
        layer.mask = backgroundMask
    }
}
