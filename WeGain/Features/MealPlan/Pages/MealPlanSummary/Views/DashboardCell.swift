//
//  DashboardCell.swift
//  WeGain
//
//  Created by Kendra Arsena Wijaya on 10/06/21.
//

import UIKit

@IBDesignable
class DashboardCell: UIView {
    @IBOutlet weak var CarboProgressView: UIProgressView!
    @IBOutlet weak var ProteinProgressView: UIProgressView!
    @IBOutlet weak var FatProgressView: UIProgressView!
    @IBOutlet weak var CaloriesEatenLabel: UILabel!
    @IBOutlet weak var CaloriesBurnedLabel: UILabel!
    
    private var backgroundMask = CAShapeLayer()
    
    override func draw(_ rect: CGRect) {
        backgroundMask.path = UIBezierPath(roundedRect: rect, cornerRadius: 10).cgPath
        layer.mask = backgroundMask
        
        CarboProgressView!.transform = CarboProgressView!.transform.scaledBy(x: 1, y: 3)
        ProteinProgressView!.transform = ProteinProgressView!.transform.scaledBy(x: 1, y: 3)
        FatProgressView!.transform = FatProgressView!.transform.scaledBy(x: 1, y: 3)
        
        CaloriesEatenLabel.text = "2000KCal"
        CaloriesBurnedLabel.text = "2000KCal"
    }
}
