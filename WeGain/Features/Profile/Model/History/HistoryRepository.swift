//
//  HistoryRepository.swift
//  WeGain
//
//  Created by Andrean Lay on 10/06/21.
//

import Foundation

class HistoryRepository {
    static let shared = HistoryRepository(dataStore: HistoryDataStore())
    
    var dataStore: HistoryDataStore?
    var histories: [History]?
    
    private init(dataStore: HistoryDataStore) {
        self.dataStore = dataStore
    }
    
    func fetch() -> [History] {
        self.histories = self.dataStore?.fetch()
        
        return self.histories ?? []
    }
    
    func addHistory(for date: Date, weight: Double) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        let history = History(context: context)
        history.date = date
        history.weight = weight
        
        try? context.save()
    }
    
    func deleteHistory(history: History) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        context.delete(history)
    }
}
