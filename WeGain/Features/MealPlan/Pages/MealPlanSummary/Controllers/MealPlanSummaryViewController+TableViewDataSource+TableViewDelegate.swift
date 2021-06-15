//
//  MealPlanSummaryViewController+TableViewDataSource+TableViewDelegate.swift
//  WeGain
//
//  Created by Kendra Arsena Wijaya on 11/06/21.
//

import UIKit

extension MealPlanSummaryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mealPlanTypeCell") as! MealPlanTableViewCell
        
        if indexPath.section == 0 {
            cell.MealType.text = "Breakfast"
        } else if indexPath.section == 1 {
            cell.MealType.text = "Lunch"
        } else if indexPath.section == 2 {
            cell.MealType.text = "Dinner"
        }
        
        return cell
    }
}

extension MealPlanSummaryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            switch indexPath.section {
                case 0:
                    navigateToMealChoices(withType: .breakfast)
                case 1:
                    navigateToMealChoices(withType: .lunch)
                default:
                    navigateToMealChoices(withType: .dinner)
            }
        }
    }
    
    private func navigateToMealChoices(withType type: PlanType) {
        let storyboard = UIStoryboard(name: "MealList", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MealListVC") as! MealListViewController
        vc.type = type
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
