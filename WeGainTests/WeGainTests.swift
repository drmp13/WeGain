//
//  WeGainTests.swift
//  WeGainTests
//
//  Created by Andrean Lay on 08/06/21.
//

import XCTest

@testable import WeGain
class WeGainTests: XCTestCase {
    let context = PersistenceManager.shared.persistentContainer.viewContext

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
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
        MealRepository.shared.add(name: "Test Meal", desc: "A meal for testing", type: .breakfast, cal: 10, carb: 11, protein: 12, fat: 13, portion: 14)
        MealRepository.shared.add(name: "Bakso", desc: "A meatball", type: .lunch, cal: 20, carb: 21, protein: 22, fat: 23, portion: 24)
        
        let meals = MealRepository.shared.fetch()
        
        XCTAssertEqual(meals.count, 2)
        XCTAssertEqual(meals[0].foodType, .breakfast)
        XCTAssertEqual(meals[1].name, "Bakso")
    }
    
    func testDeleteMeal() {
        let meals = MealRepository.shared.fetch()
        
        MealRepository.shared.delete(meal: meals[0])
        
        let newMeals = MealRepository.shared.fetch()
        
        XCTAssertEqual(newMeals.count, 1)
    }
    
    func testAddMealPlan() {
        
    }
    
    func testDeleteMealPlan() {
        
    }
    
    func testUpdateMealPlan() {
        
    }
}
