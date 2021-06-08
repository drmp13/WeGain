//
//  Plan+UpdateMeal.swift
//  WeGain
//
//  Created by Andrean Lay on 08/06/21.
//

import Foundation

extension Plan {
    func updateMeal(toBeUpdated: Meal) {
        guard let mealsArray = self.meals?.allObjects as? [Meal] else {
            print("Could not update meal")
            return
        }
        
        for meal in mealsArray {
            if meal === toBeUpdated {
                meal.eaten.toggle()
            }
        }
    }
}
