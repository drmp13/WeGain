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
    var calorieHistories: [CalorieHistory]?
    
    private init(dataStore: CalorieHistoryDataStore) {
        self.dataStore = dataStore
    }
    
    func fetch() -> [CalorieHistory] {
        self.calorieHistories = self.dataStore?.fetch()
        
        return self.calorieHistories ?? []
    }
    
    func getCalorieHistory(for date: Date) -> Double {
        let history = self.calorieHistories?.first(where: {
            $0.date == date
        })
        
        if let foundHistory = history {
            return foundHistory.max_calorie
        } else {
            return -1
        }
    }
}
