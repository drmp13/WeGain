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
    }
    
    func fetch() -> [Plan] {
        plans = self.dataStore?.fetch()
        
        return self.plans ?? []
    }
    
    func fetchByDate(date: Date, type: PlanType) -> [Plan] {
        plans = self.dataStore?.fetchByDate(date: date, type: type)
        
        return self.plans ?? []
    }
    
    private func addNewPlan(for date: Date) -> Plan {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        let plan = Plan(context: context)
        plan.date = date
        
        self.plans?.append(plan)
        
        try? context.save()
        
        return plan
    }
    
   
    func getPlan(for date: Date, type: PlanType) -> [Plan] {
        let plans = self.plans?.filter {
            $0.date == date && $0.type == type.rawValue
        }
        
        return plans ?? []
    }
    
    func addPlan(for date: Date, meal: Meal, type: PlanType) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        let plan = Plan(context: context)
        
        plan.date = date
        plan.meal = meal
        plan.type = type.rawValue
        
        print(plan)
        try? context.save()
        
        self.plans = self.dataStore?.fetch()
    }
    
    func toggleMeal(for plan: Plan) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        plan.eaten.toggle()
        
        try? context.save()
    }
    
    func deletePlan(item: Plan) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        context.delete(item)
          do{
            try context.save()
            //response = ModelResponseDefault(query_status: true, message: "OK", data: nil)
          } catch {
            //response = ModelResponseDefault(query_status: false, message: "Error: \(error)", data: nil)
          }
    }
}

