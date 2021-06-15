//
//  UserProfileRepository.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import Foundation

class ProfileRepository {
    static let shared = ProfileRepository(dataStore: ProfileDataStore())
    
    var profile: Profile?
    var dataStore: ProfileDataStore?
    
    private init(dataStore: ProfileDataStore) {
        self.dataStore = dataStore
    }
    
    func fetch() -> Profile {
        self.profile = self.dataStore?.fetch()
        
        return profile!
    }
    
    func add(gender: String, height: Double, weight: Double, activity: Double) {
        let profile = Profile(activity: activity, gender: gender, height: height, weight: weight)
        
        self.dataStore?.save(profile)
    }
    
    func edit(profile: Profile) {
        self.dataStore?.save(profile)
    }
}
