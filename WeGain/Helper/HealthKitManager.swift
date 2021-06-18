//
//  HealthStoreManager.swift
//  WeGain
//
//  Created by Andrean Lay on 15/06/21.
//

import HealthKit

class HealthKitManager {
    static let shared = HealthKitManager()
    
    var healthStore: HKHealthStore?
    var dataToRead: Set<HKQuantityType>
    
    private init() {
        self.healthStore = HKHealthStore()
        self.dataToRead = Set([
            HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKObjectType.quantityType(forIdentifier: .basalEnergyBurned)!
        ])
    }
    
    func requestPermission() {
        self.healthStore?.requestAuthorization(toShare: nil, read: self.dataToRead) { success, error in
            if !success {
                // Handle errors
            }
        }
    }
    
    func getTotalBurnedEnergy(from startDate: Date, until endDate: Date, completion: @escaping (_ burnedEnergy: Double) -> Void) {
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: endDate, options: .strictStartDate)
        
        for type in self.dataToRead {
            let query = HKSampleQuery(sampleType: type, predicate: predicate, limit: 0, sortDescriptors: nil) { query, result, error in
                if result == nil {
                    return
                }
                
                for activity in result as! [HKQuantitySample] {
                    let calories = activity.quantity.doubleValue(for: HKUnit.kilocalorie())

                    completion(calories)
                }
            }
            
            self.healthStore?.execute(query)
        }
    }
}
