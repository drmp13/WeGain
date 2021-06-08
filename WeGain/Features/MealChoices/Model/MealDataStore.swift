//
//  MealDataStore.swift
//  WeGain
//
//  Created by Andrean Lay on 08/06/21.
//

import CoreData

struct MealDataStore {
    func fetch() -> [Meal] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Meal")
        
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        var fetchedResult: [Meal] = []
        do {
            fetchedResult = try context.fetch(request) as! [Meal]
        } catch {
            print("Could not fetch meal data")
        }
        
        return fetchedResult
    }
}
