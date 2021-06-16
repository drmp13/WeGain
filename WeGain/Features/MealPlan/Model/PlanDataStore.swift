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
    
    func fetchByDate(date: Date, type: PlanType) -> [Plan] {

        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Plan")
        let predicateDateYear = NSPredicate(format: "date == %@", date as CVarArg)
        let predicateCategory = NSPredicate(format: "type == %@", type.rawValue)
        request.predicate = NSCompoundPredicate(type: NSCompoundPredicate.LogicalType.and, subpredicates: [predicateDateYear,predicateCategory])
        request.sortDescriptors = [NSSortDescriptor(key:"date", ascending:false)]
        
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


