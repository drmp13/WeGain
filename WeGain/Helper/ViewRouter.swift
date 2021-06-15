//
//  ViewRouter.swift
//  WeGain
//
//  Created by Andrean Lay on 14/06/21.
//

import Foundation

class ViewRouter {
    static let shared = ViewRouter()
    
    var firstLaunched: Bool {
        get {
            UserDefaults.standard.bool(forKey: "firstLaunch")
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "firstLaunch")
        }
    }
}
