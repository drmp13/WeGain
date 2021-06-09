//
//  MealPlanSummaryViewController.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit

class MealPlanSummaryViewController: UIViewController {

    @IBOutlet weak var DashboardView: UIView!
    @IBOutlet weak var CarboProgressBar: UIProgressView!
    @IBOutlet weak var ProteinProgressBar: UIProgressView!
    @IBOutlet weak var FatProgressBar: UIView!
    @IBOutlet weak var PieChartCalories: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DashboardView.layer.cornerRadius = 10
        CarboProgressBar.transform = CarboProgressBar.transform.scaledBy(x: 1, y: 3)
        ProteinProgressBar.transform = ProteinProgressBar.transform.scaledBy(x: 1, y: 3)
        FatProgressBar.transform = FatProgressBar.transform.scaledBy(x: 1, y: 3)
        // Do any additional setup after loading the view.
    }

}
