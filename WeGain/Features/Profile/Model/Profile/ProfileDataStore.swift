//
//  UserProfileDataStore.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import CoreData

struct ProfileDataStore {
    func fetch() -> Profile {
        if let savedProfile = UserDefaults.standard.object(forKey: Constants.PROFILE_SAVE_KEY) as? Data {
            let decoder = JSONDecoder()
            if let loadedProfile = try? decoder.decode(Profile.self, from: savedProfile) {
                return loadedProfile
            }
        }
        
        return Profile(activity: 0.0, gender: "", birthday: Date(), height: 0.0, weight: 0.0)
    }
    
    func save(_ profile: Profile) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(profile) {
            UserDefaults.standard.set(encoded, forKey: Constants.PROFILE_SAVE_KEY)
        }
    }
}
