//
//  UserProfileDataStore.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import CoreData

struct ProfileDataStore {
    func fetch() -> Profile {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Profile")
        
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        var fetchedResult: Profile?
        do {
            let result = try context.fetch(request) as! [Profile]
            fetchedResult = result[0]
        } catch {
            print("Could not fetch meal data")
        }
        
        return fetchedResult!
    }
}
