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
    
    func add(gender: String, height: Int16, weight: Int16, activity: Double) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        let profile = Profile(context: context)
        profile.gender = gender
        profile.height = height
        profile.weight = weight
        profile.activity = activity
        
        try? context.save()
    }
    
    func edit(profile: Profile) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        try? context.save()
    }
}
