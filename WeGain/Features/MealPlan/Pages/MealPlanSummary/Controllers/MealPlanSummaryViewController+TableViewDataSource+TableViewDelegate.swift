//
//  MealPlanSummaryViewController+TableViewDataSource+TableViewDelegate.swift
//  WeGain
//
//  Created by Kendra Arsena Wijaya on 11/06/21.
//

import UIKit


extension MealPlanSummaryViewController: UITableViewDataSource {
    func refreshMealPlan(tableView: UITableView){
      let totalCalorieIntake = ProfileRepository.shared.fetch().calorieIntake / 3
      var totalIntake = 0.0



        if(tableView == mealPlanBreakfast){
            planBreakfast = fetchDailyPlan(plan_type: .breakfast, selected_date: selected_date)
            let dataChecked = PlanRepository.shared.fetchByDateChecked(date: helper_createDate(date: selected_date+" 00:00:00 +7"), type: .breakfast)

            for xyz in dataChecked{
              totalIntake = totalIntake + Double(xyz.meal!.calories) ?? 0
            }
            labelBrCal.text = String(format: "(%.0f / %.0f) KCal",totalIntake as! CVarArg,totalCalorieIntake as! CVarArg)
        }else if(tableView == mealPlanLunch){
            planLunch = fetchDailyPlan(plan_type: .lunch, selected_date: selected_date)
          let dataChecked = PlanRepository.shared.fetchByDateChecked(date: helper_createDate(date: selected_date+" 00:00:00 +7"), type: .lunch)
          for xyz in dataChecked{
            totalIntake = totalIntake + Double(xyz.meal!.calories) ?? 0
          }
            labelLuCal.text = String(format: "(%.0f / %.0f) KCal",totalIntake as! CVarArg,totalCalorieIntake as! CVarArg)
        }else{
            planDinner = fetchDailyPlan(plan_type: .dinner, selected_date: selected_date)
          let dataChecked = PlanRepository.shared.fetchByDateChecked(date: helper_createDate(date: selected_date+" 00:00:00 +7"), type: .dinner)
          for xyz in dataChecked{
            totalIntake = totalIntake + Double(xyz.meal!.calories) ?? 0
          }
            labelDiCal.text = String(format: "(%.0f / %.0f) KCal",totalIntake as! CVarArg,totalCalorieIntake as! CVarArg)
        }
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if(tableView == mealPlanBreakfast){
            return  planBreakfast.count
        }else if(tableView == mealPlanLunch){
            return planLunch.count
        }else{
            return planDinner.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var total_node = 0
        var cell_id=""
        var node: [Plan]
        
        if(tableView == mealPlanBreakfast){
            cell_id = "mealPlanBreakfastReusableCell"
            node = planBreakfast
        }else if(tableView == mealPlanLunch){
            cell_id = "mealPlanLunchReusableCell"
            node = planLunch
        }else{
            cell_id = "mealPlanDinnerReusableCell"
            node = planDinner
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cell_id, for: indexPath) as! MealPlanCell

      let mealName = (node[indexPath.first!].meal?.name!.count)!>30 ? (node[indexPath.first!].meal?.name?.prefix(27))!+"..." : node[indexPath.first!].meal?.name
        cell.mealPlanCellNameLabel.text = mealName
      cell.mealPlanCellKCalLabel.text = String(format: "%.2f KCal", node[indexPath.first!].meal?.calories as! CVarArg)
        
        cell.mealPlanCellView.layer.borderWidth = 3
        cell.mealPlanCellView.layer.cornerRadius = 10
        cell.mealPlanCellView.layer.masksToBounds = true
        cell.mealPlanCellView.clipsToBounds = true
        if(node[indexPath.first!].eaten){
            cell.mealPlanCellCheckButton.tintColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            cell.mealPlanCellView.layer.borderColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            
        }else{
            cell.mealPlanCellCheckButton.tintColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            cell.mealPlanCellView.layer.borderColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        }
        
        total_node = node.count
        tableView.frame = CGRect(x: tableView.frame.minX, y: tableView.frame.minY, width: tableView.frame.width, height: cell.frame.height * CGFloat(total_node)*10)
        
        return cell
        
        
    }
}

extension MealPlanSummaryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var node: [Plan]
        
        if(tableView == mealPlanBreakfast){
            node = planBreakfast
        }else if(tableView == mealPlanLunch){
            node = planLunch
        }else{
            node = planDinner
        }
        
        PlanRepository.shared.toggleMeal(for: node[indexPath.first!])
        self.setupPlanSummary()
        refreshMealPlan(tableView: tableView)
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        var node: [Plan]
        if(tableView == mealPlanBreakfast){
            node = planBreakfast
        }else if(tableView == mealPlanLunch){
            node = planLunch
        }else{
            node = planDinner
        }
        
        let deleteActionHandler = { (action: UIContextualAction, view: UIView, completion: @escaping (Bool) -> Void) in
            
            let alert = UIAlertController(title: "Delete data?", message: "You can't undo this action!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
                let _ = PlanRepository.shared.deletePlan(item: node[indexPath.first!])
                node.remove(at: indexPath.first!)
                self.refreshMealPlan(tableView: tableView)
            }))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            
            self.present(alert, animated: true)
            
            //
            //let section = IndexSet(integer: indexPath.section)
            
            //
            
            //tableView.beginUpdates()
            //tableView.deleteSections(section, with: .automatic)
            //tableView[indexPath.section].removeAtIndex(indexPath.row)
            //tableView.deleteRows(at: [indexPath], with: .fade)
            
            // tableView.endUpdates()
            
            
        }
        let actions = [
            UIContextualAction(style: .destructive, title: "Delete", handler: deleteActionHandler)
        ]
        let swipeActionConfig = UISwipeActionsConfiguration(actions: actions)
        swipeActionConfig.performsFirstActionWithFullSwipe = false
        return swipeActionConfig
    }
    
    
}

