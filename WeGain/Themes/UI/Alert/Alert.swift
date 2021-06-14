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
