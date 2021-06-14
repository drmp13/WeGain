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
        backgroundMask.fillColor = UIColor.clear.cgColor
        backgroundMask.strokeColor = UIColor.white.cgColor
        self.backgroundColor = AppColor.red
        self.backgroundColor?.setFill()
        UIGraphicsGetCurrentContext()!.fill(rect);
        layer.addSublayer(backgroundMask)
    
        
        let caloriesLeft = UILabel()
        caloriesLeft.textColor = .white
        caloriesLeft.font = UIFont.boldSystemFont(ofSize: 18)
        caloriesLeft.textAlignment = .center
        caloriesLeft.frame = CGRect(x: self.frame.width / 4 - 4, y: self.frame.width / 2 - 24, width: self.frame.width / 2 + 16, height: self.frame.width / 8)
        caloriesLeft.text = "2567 KCal left"
        caloriesLeft.minimumScaleFactor = 0.5
        caloriesLeft.adjustsFontSizeToFitWidth = true
        caloriesLeft.numberOfLines = 0
        caloriesLeft.sizeToFit()
        addSubview(caloriesLeft)
    }
}
