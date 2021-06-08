//
//  MealRepository.swift
//  WeGain
//
//  Created by Andrean Lay on 08/06/21.
//

import Foundation

class MealRepository {
    static let shared = MealRepository(dataStore: MealDataStore())
    
    var meals: [Meal]?
    var dataStore: MealDataStore?
    
    private init(dataStore: MealDataStore) {
        self.dataStore = dataStore
    }
    
    func fetch() -> [Meal] {
        if meals == nil {
            self.meals = self.dataStore?.fetch()
        }
        
        return meals ?? []
    }
    
    func add(name: String, desc: String, type: FoodType, cal: Int16, carb: Int16, protein: Int16, fat: Int16, portion: Int16) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        let meal = Meal(context: context)
        meal.name = name
        meal.desc = desc
        meal.type = type.rawValue
        meal.calories = cal
        meal.carbohydrate = carb
        meal.protein = protein
        meal.fat = fat
        meal.protein = protein
        
        try? context.save()
    }
    
    func delete(meal: Meal) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        context.delete(meal)
    }
}
