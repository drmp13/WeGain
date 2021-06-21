//
//  PlanSummary.swift
//  WeGain
//
//  Created by Andrean Lay on 16/06/21.
//

import Foundation
import SwiftUI

class PlanSummary: ObservableObject {
    @Published var eatenCals: (Double, Double) = (0.0, 0.0)
    var carb: (Double, Double) = (0.0, 0.0)
    var protein: (Double, Double) = (0.0, 0.0)
    var fat: (Double, Double) = (0.0, 0.0)
    
    private func resetSummary() {
        eatenCals = (0.0, 0.0)
        carb = (0.0, 0.0)
        protein = (0.0, 0.0)
        fat = (0.0, 0.0)
    }
    
    func getSummary(for date: Date) {
        self.resetSummary()
        let breakfastPlan = PlanRepository.shared.fetchByDate(date: date, type: .breakfast)
        let lunchPlan = PlanRepository.shared.fetchByDate(date: date, type: .lunch)
        let dinnerPlan = PlanRepository.shared.fetchByDate(date: date, type: .dinner)
        
        let plans = breakfastPlan + lunchPlan + dinnerPlan
        
        for plan in plans {
            if plan.eaten {
                eatenCals.0 += plan.meal!.calories
                carb.0 += plan.meal!.carbohydrate
                protein.0 += plan.meal!.protein
                fat.0 += plan.meal!.fat
            }
        }

        if CalorieHistoryRepository.shared.getCalorieHistory(for: date) == 0 {
            eatenCals.1 = ProfileRepository.shared.fetch().calorieIntake
        } else {
            eatenCals.1 = CalorieHistoryRepository.shared.getCalorieHistory(for: date)
        }
        
        carb.1 = eatenCals.1 * 4
        protein.1 = eatenCals.1 * 4
        fat.1  = eatenCals.1 * 9
        
    }
}
