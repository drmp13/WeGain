//
//  MealPlanSummaryViewController.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit
import SwiftUI

class MealPlanSummaryViewController: UIViewController {
    
    
    @IBOutlet weak var mealPlanBreakfast: UITableView!
    @IBOutlet weak var mealPlanLunch: UITableView!
    @IBOutlet weak var mealPlanDinner: UITableView!
    @IBOutlet weak var WeeklyCalendarView: UICollectionView!
    @IBOutlet weak var viewBreakfast: UIView!
    @IBOutlet weak var viewLunch: UIView!
    @IBOutlet weak var viewDinner: UIView!
    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var dashboardView: DashboardCell!
  @IBOutlet weak var mainViewHeightConstraint: NSLayoutConstraint!
  @IBOutlet weak var stackViewMealPlan: UIStackView!

    
    var planBreakfast = [Plan]()
    var planLunch = [Plan]()
    var planDinner = [Plan]()
    var selected_date = helper_getCurrentDate(format: "yyyy-MM-dd")
    var planSummary = PlanSummary()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(helper_getCurrentDate(format: "yyyy-MM-dd"))
        
        //planBreakfast = fetchDailyPlan(plan_type: .breakfast, selected_date: selected_date)
        //planLunch = fetchDailyPlan(plan_type: .lunch, selected_date: selected_date)
        //planDinner = fetchDailyPlan(plan_type: .dinner, selected_date: selected_date)
        
        let nib = UINib(nibName: "\(MealPlanCell.self)", bundle: nil)
        
        mealPlanBreakfast.register(nib, forCellReuseIdentifier: "mealPlanBreakfastReusableCell")
        mealPlanBreakfast.dataSource = self
        mealPlanBreakfast.delegate = self
        
        mealPlanLunch.register(nib, forCellReuseIdentifier: "mealPlanLunchReusableCell")
        mealPlanLunch.dataSource = self
        mealPlanLunch.delegate = self
        
        mealPlanDinner.register(nib, forCellReuseIdentifier: "mealPlanDinnerReusableCell")
        mealPlanDinner.dataSource = self
        mealPlanDinner.delegate = self
        
        let nib_calendar = UINib(nibName: "\(CalendarCell.self)", bundle: nil)
        WeeklyCalendarView.register(nib_calendar, forCellWithReuseIdentifier: "calendarCell")
        
        let cg1Tap = UITapGestureRecognizer(target: self, action: #selector(setCategoryIndexCG1(tapGestureRecognizer:)))
        viewBreakfast.addGestureRecognizer(cg1Tap)
        viewBreakfast.isUserInteractionEnabled = true
        
        let cg2Tap = UITapGestureRecognizer(target: self, action: #selector(setCategoryIndexCG2(tapGestureRecognizer:)))
        viewLunch.addGestureRecognizer(cg2Tap)
        viewLunch.isUserInteractionEnabled = true
        
        let cg3Tap = UITapGestureRecognizer(target: self, action: #selector(setCategoryIndexCG3(tapGestureRecognizer:)))
        viewDinner.addGestureRecognizer(cg3Tap)
        viewDinner.isUserInteractionEnabled = true
        
        //mealPlanBreakfast.tableFooterView = UIView(frame: .zero)

      //print("VWCNSTRN \(viewMain.constraints)")
      //print("VWCNSTRN \(mainViewHeightConstraint)")
      print(stackViewMealPlan.frame.height)


      //print("VWCNSTRN \(viewMain.constraints)")
        
        self.setupPlanSummary()
    }

    override func viewDidAppear(_ animated: Bool) {
        //refreshConstraint()
      print("as")
      refreshMealPlan(tableView: mealPlanBreakfast)
      refreshMealPlan(tableView: mealPlanLunch)
      refreshMealPlan(tableView: mealPlanDinner)
      refreshConstraint()
    }
    
    @objc func setCategoryIndexCG1(tapGestureRecognizer: UITapGestureRecognizer){
        navigateToMealChoices(withType: .breakfast)
    }
    @objc func setCategoryIndexCG2(tapGestureRecognizer: UITapGestureRecognizer){
        navigateToMealChoices(withType: .lunch)
    }
    @objc func setCategoryIndexCG3(tapGestureRecognizer: UITapGestureRecognizer){
        navigateToMealChoices(withType: .dinner)
    }
    
    func fetchDailyPlan(plan_type: PlanType, selected_date: String) -> [Plan]{
        return PlanRepository.shared.fetchByDate(date: helper_createDate(date: selected_date+" 00:00:00 +7"), type: plan_type)
    }
    
    func refreshConstraint(){
        let heightConstraintBreakfast = mealPlanBreakfast.heightAnchor.constraint(equalToConstant: CGFloat(78*planBreakfast.count))
        mealPlanBreakfast.removeConstraints(mealPlanBreakfast.constraints)
        mealPlanBreakfast.translatesAutoresizingMaskIntoConstraints = false
        mealPlanBreakfast.addConstraints([heightConstraintBreakfast])
        
        let heightConstraintLunch = mealPlanLunch.heightAnchor.constraint(equalToConstant: CGFloat(78*planLunch.count))
        mealPlanLunch.removeConstraints(mealPlanLunch.constraints)
        mealPlanLunch.translatesAutoresizingMaskIntoConstraints = false
        mealPlanLunch.addConstraints([heightConstraintLunch])
        
        let heightConstraintDinner = mealPlanDinner.heightAnchor.constraint(equalToConstant: CGFloat(78*planDinner.count))
        mealPlanDinner.removeConstraints(mealPlanDinner.constraints)
        mealPlanDinner.translatesAutoresizingMaskIntoConstraints = false
        mealPlanDinner.addConstraints([heightConstraintDinner])

      //let heightConstraintMainView = viewMain.heightAnchor.constraint(equalToConstant: stackViewMealPlan.frame.height+35)
      //viewMain.constraints.

      //mainViewHeightConstraint.constant = stackViewMealPlan.frame.height+35

      //let totalData = planBreakfast.count+planLunch.count+planDinner.count
      //print((Int(stackViewMealPlan.frame.height)+35)-(78*totalData))
      //viewMain.removeConstraint(mainViewHeightConstraint)
      //viewMain.addConstraints([heightConstraintMainView])
        print("CONSTRN BRKFS: \(mealPlanBreakfast.constraints)")
        print("CONSTRN LUNCH: \(mealPlanLunch.constraints)")
        print("CONSTRN DINNER: \(mealPlanDinner.constraints)")
        
    }
    
    private func navigateToMealChoices(withType type: PlanType) {
        let storyboard = UIStoryboard(name: "MealList", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MealListVC") as! MealListViewController
        vc.type = type
        vc.selected_date = selected_date
        
        navigationController?.pushViewController(vc, animated: true)
        
        self.setupPlanSummary()
    }
    
    
    @IBSegueAction func circleProgressBarView(_ coder: NSCoder) -> UIViewController? {
        let rootView = CircleProgressBar().environmentObject(self.planSummary)
        let controller = UIHostingController(coder: coder, rootView: rootView)
        controller?.view.backgroundColor = .clear
        
        return controller
    }
}
