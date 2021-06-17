//
//  MealPlanSummary+PlanSummary.swift
//  WeGain
//
//  Created by Andrean Lay on 15/06/21.
//

import UIKit

extension MealPlanSummaryViewController {
    func setupPlanSummary() {
        let eatenCals: (Double, Double) = self.planSummary.eatenCals
        let carb: (Double, Double) = self.planSummary.carb
        let protein: (Double, Double) = self.planSummary.protein
        let fat: (Double, Double) = self.planSummary.fat
        
        self.dashboardView.CaloriesEatenLabel.text = "\(eatenCals.0) KCal"
        
        self.dashboardView.CarboProgressView.progress = Float(carb.0 / carb.1)
        self.dashboardView.carboProgressLabel.text = "\(carb.0)/\(carb.1) gr"
        
        self.dashboardView.ProteinProgressView.progress = Float(protein.0 / protein.1)
        self.dashboardView.proteinProgressLabel.text = "\(protein.0)/\(protein.1) gr"
        
        self.dashboardView.FatProgressView.progress = Float(fat.0 / fat.1)
        self.dashboardView.fatProgressLabel.text = "\(fat.0)/\(fat.1) gr"
        
        self.updateActivityCalorie()
    }
    
    func updateActivityCalorie() {
        let currentDate = Calendar.current.startOfDay(for: Date())
        
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
