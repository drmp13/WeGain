//
//  HistoryDataStore.swift
//  WeGain
//
//  Created by Andrean Lay on 10/06/21.
//

import CoreData

struct HistoryDataStore {
    func fetch() -> [History] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "History")
        
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        var fetchedResult: [History]?
        do {
            let result = try context.fetch(request) as! [History]
            fetchedResult = result
        } catch {
            print("Could not fetch meal data")
        }
        
        return fetchedResult!
    }
}
