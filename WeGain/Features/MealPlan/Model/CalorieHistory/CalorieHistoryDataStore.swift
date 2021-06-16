//
//  CalorieHistoryDataStore.swift
//  WeGain
//
//  Created by Andrean Lay on 16/06/21.
//

import CoreData

struct CalorieHistoryDataStore {
    func fetch() -> [CalorieHistory] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "CalorieHistory")
        
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        var fetchedResult: [CalorieHistory] = []
        do {
            fetchedResult = try context.fetch(request) as! [CalorieHistory]
        } catch {
            print("Could not fetch plan data")
        }
        
        return fetchedResult
    }
}
