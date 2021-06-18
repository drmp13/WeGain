//
//  MealPlanSummary+PlanSummary.swift
//  WeGain
//
//  Created by Andrean Lay on 15/06/21.
//

import UIKit

extension MealPlanSummaryViewController {
    func setupPlanSummary() {
        planSummary.getSummary(for: helper_createDate(date: selected_date + " 00:00:00 +7"))
        let eatenCals: (Double, Double) = self.planSummary.eatenCals
        let carb: (Double, Double) = self.planSummary.carb
        let protein: (Double, Double) = self.planSummary.protein
        let fat: (Double, Double) = self.planSummary.fat
        
        self.dashboardView.CaloriesEatenLabel.text = String(format: "%.2f KCal", eatenCals.0)
        
        self.dashboardView.CarboProgressView.setProgress(Float(carb.0 / carb.1), animated: true)
        self.dashboardView.carboProgressLabel.text = String(format: "%.2f/%.2f gr", carb.0, carb.1)
        
        self.dashboardView.ProteinProgressView.setProgress(Float(protein.0 / protein.1), animated: true)
        self.dashboardView.proteinProgressLabel.text = String(format: "%.2f/%.2f gr", protein.0, protein.1)
        
        self.dashboardView.FatProgressView.setProgress(Float(fat.0 / fat.1), animated: true)
        self.dashboardView.fatProgressLabel.text = String(format: "%.2f/%.2f gr", protein.0, protein.1)
        
        self.updateActivityCalorie()
    }
    
    func updateActivityCalorie() {
        self.dashboardView.CaloriesBurnedLabel.text = "0.0 KCal"
        let currentDate = helper_createDate(date: selected_date + " 00:00:00 +7")
        
        var dateComponents = DateComponents()
        dateComponents.day = 1
        dateComponents.second = -1
        
        let nextDate = Calendar.current.date(byAdding: dateComponents, to: currentDate)
        
        var totalEnergy: Double = 0.0
        HealthKitManager.shared.getTotalBurnedEnergy(from: currentDate, until: nextDate!) { burnedEnergy in
            totalEnergy += burnedEnergy
            
            DispatchQueue.main.async {
                self.dashboardView.CaloriesBurnedLabel.text = "\(totalEnergy) KCal"
            }
        }
    }
}
