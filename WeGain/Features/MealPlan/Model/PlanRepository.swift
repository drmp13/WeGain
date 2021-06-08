//
//  MealPlanRepository.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import Foundation

class PlanRepository {
    static let shared = PlanRepository(dataStore: PlanDataStore())
    
    var plans: [Plan]?
    var dataStore: PlanDataStore?
    
    private init(dataStore: PlanDataStore) {
        self.dataStore = dataStore
        self.fetch()
    }
    
    private func fetch() {
        plans = self.dataStore?.fetch()
    }
    
    func getPlan(for date: Date) -> Plan {
        let plan = self.plans?.first(where: {
            $0.date == date
        })
        
        return plan ?? Plan()
    }
    
    func addMeal(for plan: Plan, meal: Meal) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        plan.addToMeals(meal)
        
        try? context.save()
    }
    
    func deleteMeal(for plan: Plan, meal: Meal) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        plan.removeFromMeals(meal)
        try? context.save()
    }
    
    func toggleMeal(for plan: Plan, meal: Meal) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        plan.updateMeal(toBeUpdated: meal)
        try? context.save()
    }
}

