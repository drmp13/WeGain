//
//  MealPlanSummaryViewController.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit

class MealPlanSummaryViewController: UIViewController {

    @IBOutlet weak var MealPlanTableView: UITableView!
    @IBOutlet weak var WeeklyCalendarView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "\(MealPlanTableViewCell.self)", bundle: nil)
        MealPlanTableView.register(nib, forCellReuseIdentifier: "mealPlanTypeCell")
        
        let nib_calendar = UINib(nibName: "\(CalendarCell.self)", bundle: nil)
        WeeklyCalendarView.register(nib_calendar, forCellWithReuseIdentifier: "calendarCell")
        
        let profile = ProfileRepository.shared.fetch()
        
        print(profile.activity)
        print(profile.height)
        print(profile.weight)
        print(profile.gender)
    }

}
