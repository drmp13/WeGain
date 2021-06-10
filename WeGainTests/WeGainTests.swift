//
//  WeGainTests.swift
//  WeGainTests
//
//  Created by Andrean Lay on 08/06/21.
//

import XCTest
import CoreData

@testable import WeGain
class WeGainTests: XCTestCase {
    let context = PersistenceManager.shared.persistentContainer.viewContext

    func testExample() throws {
        self.resetData()
        
        self.testAddProfile()
        self.testEditProfile()
        
        self.testAddMeal()
        self.testDeleteMeal()
        self.testAddMealPlan()
        self.testUpdateMealPlan()
    }
    
    func resetData() {
        let context = PersistenceManager.shared.persistentContainer.viewContext
        
        var request = NSFetchRequest<NSFetchRequestResult>(entityName: "Meal")
        var deleteRequest = NSBatchDeleteRequest(fetchRequest: request)
        _ = try! context.execute(deleteRequest)
        
        request = NSFetchRequest<NSFetchRequestResult>(entityName: "Plan")
        deleteRequest = NSBatchDeleteRequest(fetchRequest: request)
        _ = try! context.execute(deleteRequest)
        
        request = NSFetchRequest<NSFetchRequestResult>(entityName: "Profile")
        deleteRequest = NSBatchDeleteRequest(fetchRequest: request)
        _ = try! context.execute(deleteRequest)
        
        try? context.save()
    }

    func testAddProfile() {
        ProfileRepository.shared.add(gender: "Male", height: 170, weight: 55, activity: 1.2)
        
        let profile = ProfileRepository.shared.fetch()
        
        XCTAssertEqual(profile.gender, "Male")
        XCTAssertEqual(profile.height, 170)
    }
    
    func testEditProfile() {
        let profile = ProfileRepository.shared.fetch()
        
        profile.gender = "Female"
        ProfileRepository.shared.edit(profile: profile)
        
        let newProfile = ProfileRepository.shared.fetch()
        
        XCTAssertEqual(newProfile.gender, "Female")
    }
    
    func testAddMeal() {
        MealRepository.shared.add(name: "Test Meal", desc: "A meal for testing", cal: 10, carb: 11, protein: 12, fat: 13, portion: 14)
        MealRepository.shared.add(name: "Bakso", desc: "A meatball", cal: 20, carb: 21, protein: 22, fat: 23, portion: 24)

        let meals = MealRepository.shared.fetch()

        XCTAssertEqual(meals.count, 2)
        XCTAssertEqual(meals[1].name, "Bakso")
    }

    func testDeleteMeal() {
        let meals = MealRepository.shared.fetch()

        MealRepository.shared.delete(meal: meals[0])

        let newMeals = MealRepository.shared.fetch()

        XCTAssertEqual(newMeals.count, 1)
    }

    func testAddMealPlan() {
        let date = Calendar.current.startOfDay(for: Date())

        let meal = MealRepository.shared.fetch()[0]
        PlanRepository.shared.addPlan(for: date, meal: meal, type: .breakfast)
        let plan = PlanRepository.shared.getPlan(for: date, type: .breakfast)[0]
        
        XCTAssertEqual(meal.name, plan.meal?.name)
    }

    func testUpdateMealPlan() {
        let date = Calendar.current.startOfDay(for: Date())
        let plan = PlanRepository.shared.getPlan(for: date, type: .breakfast)[0]
        PlanRepository.shared.toggleMeal(for: plan)
        
        let newPlan = PlanRepository.shared.getPlan(for: date, type: .breakfast)[0]

        XCTAssertEqual(newPlan.eaten, true)
    }
}
