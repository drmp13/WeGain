//
//  Profile.swift
//  WeGain
//
//  Created by Andrean Lay on 15/06/21.
//

import Foundation

struct Profile: Codable {
    var activity: Double
    var gender: String
    var birthday: Date
    var height: Double
    var weight: Double
    
    var age: Int {
        get {
            Calendar.current.dateComponents([.year], from: birthday, to: Date()).year!
        }
    }
    
    var activityDescription: String {
        get {
            switch activity {
                case 1.2:
                    return "1.2 - bed/chair bound"
                case 1.4:
                    return "1.4 - sedentary work"
                case 1.6:
                    return "1.6 - mostly sedentary"
                case 1.8:
                    return "1.8 - mostly standing/walking"
                case 2.0:
                    return "2.0 - heavy activity"
                case 2.2:
                    return "2.2 - significantly heavy activity"
                default:
                    return "Not available"
            }
        }
    }
    
    var calorieIntake: Double {
        get {
            var bmi = 0.0
            if gender == "Male" {
                let weightFactor = 13.7 * weight
                let heightFactor = 5 * height
                let ageFactor = 6.8 * Double(age)
                
                bmi = 66 + weightFactor + heightFactor + ageFactor
            } else {
                let weightFactor = 9.6 * weight
                let heightFactor = 1.7 * height
                let ageFactor = 4.7 * Double(age)
                
                bmi = 66.5 + weightFactor + heightFactor + ageFactor
            }
            
            return bmi * activity
        }
    }
}
