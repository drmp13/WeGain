//
//  CalorieHistoryRepository.swift
//  WeGain
//
//  Created by Andrean Lay on 16/06/21.
//

import Foundation

class CalorieHistoryRepository {
    static let shared = CalorieHistoryRepository(dataStore: CalorieHistoryDataStore())
    
    var dataStore: CalorieHistoryDataStore?
    
    private init(dataStore: CalorieHistoryDataStore) {
        self.dataStore = dataStore
    }
    
    func getCalorieHistory(for date: Date) -> Double {
        let history = self.dataStore?.fetchByDate(date: date)
        
        if let foundHistory = history {
            return foundHistory.max_calorie
        } else {
            return 0
        }
    }
    
    func addCalorieHistory(maxCalorie: Double, for date: Date) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        let history = self.dataStore?.fetchByDate(date: date)
        if history == nil {
            history?.max_calorie = maxCalorie
        } else {
            let calorieHistory = CalorieHistory(context: context)
            calorieHistory.max_calorie = maxCalorie
            calorieHistory.date = date
        }
        
        try? context.save()
    }
}
