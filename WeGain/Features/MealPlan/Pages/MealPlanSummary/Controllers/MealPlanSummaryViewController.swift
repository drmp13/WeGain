//
//  MealPlanSummaryViewController.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit
import SwiftUI

class MealPlanSummaryViewController: UIViewController {

    @IBOutlet weak var MealPlanTableView: UITableView!
    @IBOutlet weak var WeeklyCalendarView: UICollectionView!
    @IBOutlet weak var dashboardView: DashboardCell!

    var currentDate: Date?
    var currentBreakfastPlan: [Plan]?
    var currentLunchPlan: [Plan]?
    var currentDinnerPlan: [Plan]?
    
    var planSummary = PlanSummary(for: Calendar.current.startOfDay(for: Date()))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "\(MealPlanTableViewCell.self)", bundle: nil)
        MealPlanTableView.register(nib, forCellReuseIdentifier: "mealPlanTypeCell")
        
        let nib_calendar = UINib(nibName: "\(CalendarCell.self)", bundle: nil)
        WeeklyCalendarView.register(nib_calendar, forCellWithReuseIdentifier: "calendarCell")
        
        currentDate = Calendar.current.startOfDay(for: Date())

        self.setupPlanSummary()
    }
    
    
    @IBSegueAction func circleProgressBarView(_ coder: NSCoder) -> UIViewController? {
        let rootView = CircleProgressBar(value: 500, maxValue: 500).environmentObject(self.planSummary)
        let controller = UIHostingController(coder: coder, rootView: rootView)
        controller?.view.backgroundColor = .clear
        
        return controller
    }
}
