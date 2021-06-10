//
//  MealPlanDataStore.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import CoreData

struct PlanDataStore {
    func fetch() -> [Plan] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Plan")
        
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        var fetchedResult: [Plan] = []
        do {
            fetchedResult = try context.fetch(request) as! [Plan]
        } catch {
            print("Could not fetch plan data")
        }
        
        return fetchedResult
    }
}


