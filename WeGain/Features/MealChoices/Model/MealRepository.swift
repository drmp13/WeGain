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
        self.meals = self.dataStore?.fetch()
        
        return meals ?? []
    }
    
    func add(name: String, cal: Double, carb: Double, protein: Double, fat: Double, portion: Double, is_user: Bool = false) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        let meal = Meal(context: context)
        meal.name = name
        meal.calories = cal
        meal.carbohydrate = carb
        meal.protein = protein
        meal.fat = fat
        meal.portion = portion
        meal.is_user = is_user
        
        do{
          try context.save()
          print("Success!")
          //response = ModelResponseDefault(query_status: true, message: "OK", data: nil)
        } catch {
          //response = ModelResponseDefault(query_status: false, message: "Error: \(error)", data: nil)
          print("Error: \(error)")
        }
        
       
    }
    
    func delete(meal: Meal) {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        

        context.delete(meal)
        
        
    }
}
