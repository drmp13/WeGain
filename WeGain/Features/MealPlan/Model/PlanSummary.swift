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
    
    init(for date: Date) {
        self.getSummary(for: date)
    }
    
    func getSummary(for date: Date) {
        var plans = [Plan]()
        for type in PlanType.allCases {
            plans += PlanRepository.shared.getPlan(for: date, type: type)
        }
        
        for plan in plans {
            carb.1 += plan.meal!.carbohydrate
            protein.1 += plan.meal!.protein
            fat.1 += plan.meal!.fat
            
            if plan.eaten {
                eatenCals.0 += plan.meal!.calories
                carb.0 += plan.meal!.carbohydrate
                protein.0 += plan.meal!.protein
                fat.0 += plan.meal!.fat
            }
        }
        
        eatenCals.1 = CalorieHistoryRepository.shared.getCalorieHistory(for: date)
    }
}
