//
//  Meal+Enums.swift
//  WeGain
//
//  Created by Andrean Lay on 08/06/21.
//

import Foundation

enum FoodType: String {
    case breakfast = "Breakfast"
    case lunch = "Lunch"
    case dinner = "Dinner"
}

extension Meal {
    var foodType: FoodType {
        get {
            return FoodType(rawValue: self.type!)!
        }
        set {
            self.type = newValue.rawValue
        }
    }
}
