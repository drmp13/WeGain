//
//  Meal+Enums.swift
//  WeGain
//
//  Created by Andrean Lay on 08/06/21.
//

import Foundation

enum PlanType: String {
    case breakfast = "Breakfast"
    case lunch = "Lunch"
    case dinner = "Dinner"
}

extension Plan {
    var planType: PlanType {
        get {
            return PlanType(rawValue: self.type!)!
        }
        set {
            self.type = newValue.rawValue
        }
    }
}
