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
    
    @IBOutlet weak var carboProgressLabel: UILabel!
    @IBOutlet weak var proteinProgressLabel: UILabel!
    @IBOutlet weak var fatProgressLabel: UILabel!
    
    private var backgroundMask = CAShapeLayer()
    
    override func draw(_ rect: CGRect) {
        backgroundMask.path = UIBezierPath(roundedRect: rect, cornerRadius: 10).cgPath
        layer.mask = backgroundMask
        
//        CarboProgressView.transform = CGAffineTransform(scaleX: 1, y: 4)
        self.CarboProgressView.layer.cornerRadius = 10
        self.CarboProgressView.clipsToBounds = true

//        ProteinProgressView.transform = CGAffineTransform(scaleX: 1, y: 4)
        self.ProteinProgressView.layer.cornerRadius = 10
        self.ProteinProgressView.clipsToBounds = true

//        FatProgressView.transform = CGAffineTransform(scaleX: 1, y: 4)
        self.FatProgressView.layer.cornerRadius = 10
        self.FatProgressView.clipsToBounds = true
    }
}
