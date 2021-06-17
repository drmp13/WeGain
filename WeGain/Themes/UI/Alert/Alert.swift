//
//  GeneralAlert.swift
//
//  Created by Dwi Rizki Manggala Putra on 06/04/21.
//

import UIKit

func createDefaultAlert(alertMessage: String, buttonTitle: String = "OK") -> UIAlertController {
    let dialogMessage = UIAlertController(title: "Alert", message: alertMessage, preferredStyle: .alert)
    let ok = UIAlertAction(title:buttonTitle, style: .default, handler: { (action) -> Void in
        print("Ok button tapped")
    })
    dialogMessage.addAction(ok)
    
    return dialogMessage
}

func createHealthAppAlert(alertMessage: String) -> UIAlertController {
    let dialogMessage = UIAlertController(title: "Allow Access to Burned Calorie Data", message: alertMessage, preferredStyle: .alert)

    dialogMessage.addAction(UIAlertAction(title: "Go to Settings", style: .default, handler: { (_) -> Void in
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString)
        else {
            return
        }
        if UIApplication.shared.canOpenURL(settingsUrl) {
            UIApplication.shared.open(settingsUrl, completionHandler: { (success) in
                print("Settings opened: \(success)")
            })
        }
    }))
    
    dialogMessage.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) -> Void in
        print("cancel button tapped")
    }))
    
    return dialogMessage
}

