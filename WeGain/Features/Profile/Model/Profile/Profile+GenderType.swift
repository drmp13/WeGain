//
//  Plan+ActivityType+GenderType.swift
//  WeGain
//
//  Created by Andrean Lay on 08/06/21.
//

import Foundation

enum Gender: String {
    case male = "Male"
    case female = "Female"
}

extension Profile {
    var genderType: Gender {
        get {
            return Gender(rawValue: self.gender)!
        }
        set {
            self.gender = newValue.rawValue
        }
    }
}
