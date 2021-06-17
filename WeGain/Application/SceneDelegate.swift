//
//  SceneDelegate.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            if !ViewRouter.shared.firstLaunched {
                MealModel().initDefaultMeals()
                let storyboard = UIStoryboard(name: "SwipeInfo", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "OnboardingVC")
                
                let window = UIWindow(windowScene: windowScene)
                window.rootViewController = vc
                self.window = window
                window.makeKeyAndVisible()
                
                HealthKitManager.shared.requestPermission()
            }
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        let profile = ProfileRepository.shared.fetch()
        let date = UserDefaults.standard.object(forKey: Constants.CALORIE_SYNC_TIME_KEY) as? Date
        
        guard !profile.gender.isEmpty else {
            return
        }
        
        if date == nil || Calendar.current.isDateInYesterday(date!) {
            UserDefaults.standard.setValue(Date(), forKey: Constants.CALORIE_SYNC_TIME_KEY)
            
            var bmi: Double {
                var bmi: Double = 0
                
                if profile.gender == "Male" {
                    bmi = 66 + (13.7 * profile.weight) + (5 * profile.height) + (6.8 * Double(profile.age))
                } else {
                    bmi = 66.5 + (9.6 * profile.weight) + (1.7 * profile.height) + (4.7 * Double(profile.age))
                }
                
                return bmi
            }

            CalorieHistoryRepository.shared.addCalorieHistory(maxCalorie: bmi * profile.activity, for: helper_getStartOfDay())
        }
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        PersistenceManager.shared.saveContext()
    }
}

