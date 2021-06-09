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
    
    private func addNewPlan(for date: Date) -> Plan {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        let plan = Plan(context: context)
        plan.date = date
        
        self.plans?.append(plan)
        
        try? context.save()
        
        return plan
    }
    
    func getPlan(for date: Date) -> Plan {
        let plan = self.plans?.first(where: {
            $0.date == date
        })
        
        return plan ?? self.addNewPlan(for: date)
    }
    
    func addMeal(for date: Date, meal: Meal) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        let plan = self.getPlan(for: date)
        
        plan.addToMeals(meal)
        
        try? context.save()
    }
    
    func deleteMeal(for date: Date, meal: Meal) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        let plan = self.getPlan(for: date)
        
        plan.removeFromMeals(meal)
        try? context.save()
    }
    
    func toggleMeal(for date: Date, meal: Meal) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        let plan = self.getPlan(for: date)
        
        plan.updateMeal(toBeUpdated: meal)
        try? context.save()
    }
}

