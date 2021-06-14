//
//  UpdateProfileViewController.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit

class UserProfileViewController: UIViewController {
    @IBOutlet weak var syncSwitch: UISwitch!
    
    @IBOutlet weak var weightHistoryTableView: UITableView!
    
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var activityTextField: UITextField!
    
    let weightArray = ["60", "61", "62", "63", "64", "65"]
    let heightArray = ["170", "171", "172", "173", "174", "175"]
    let activityArray = ["1.2 - bed/chair bound", "1.4 - sedentary work", "1.6 - mostly sedentary", "1.8 - mostly standing/walking", "2.0 - heavy activity", "2.2 - significantly heavy activity" ]
    
    var weightPickerView = UIPickerView()
    var heightPickerView = UIPickerView()
    var activityPickerview = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weightTextField.inputView = weightPickerView
        heightTextField.inputView = heightPickerView
        activityTextField.inputView = activityPickerview
        
        weightTextField.placeholder = "50"
        heightTextField.placeholder = "175"
        activityTextField.placeholder = "activity"
        
        weightTextField.textAlignment = .center
        heightTextField.textAlignment = .center
        activityTextField.textAlignment = .center
        
        weightPickerView.delegate = self
        weightPickerView.dataSource = self
        
        heightPickerView.delegate = self
        heightPickerView.dataSource = self
        
        activityPickerview.delegate = self
        activityPickerview.dataSource = self
        
        weightPickerView.tag = 1
        heightPickerView.tag = 2
        activityPickerview.tag = 3
    }
}

extension UserProfileViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return weightArray.count
        case 2:
            return heightArray.count
        case 3:
            return activityArray.count
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return weightArray[row]
        case 2:
            return heightArray[row]
        case 3:
            return activityArray[row]
        default:
            return "Data not found"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            weightTextField.text = weightArray[row]
            weightTextField.resignFirstResponder()
        case 2:
            heightTextField.text = heightArray[row]
            heightTextField.resignFirstResponder()
        case 3:
            activityTextField.text = activityArray[row]
            activityTextField.resignFirstResponder()
        default:
            return
        }
    }
}
