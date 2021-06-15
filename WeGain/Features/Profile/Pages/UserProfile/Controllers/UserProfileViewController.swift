//
//  UpdateProfileViewController.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit
import SwiftUI

class UserProfileViewController: UIViewController {
    
    @IBOutlet weak var chartSwiftUI: UIView!
    
    @IBOutlet weak var syncSwitch: UISwitch!

    @IBOutlet weak var updateButton: UIButton!

    @IBOutlet weak var weightHistoryTableView: UITableView!
    
    var dateHistoryArray = [History]()
    var weightHistoryArray = [History]()
    
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var activityTextField: UITextField!
    
    let weightArray = Array(20...100).map(String.init)
    let heightArray = Array(120...220).map(String.init)
    let activityArray = ["1.2 - bed/chair bound", "1.4 - sedentary work", "1.6 - mostly sedentary", "1.8 - mostly standing/walking", "2.0 - heavy activity", "2.2 - significantly heavy activity" ]
    
    var weightPickerView = UIPickerView()
    var heightPickerView = UIPickerView()
    var activityPickerview = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        profilePickerView()
        
        weightTextField.placeholder = "45"
        heightTextField.placeholder = "175"
        activityTextField.placeholder = "1.8 - mostly standing/walking"
        
        weightHistoryTableView.delegate = self
        weightHistoryTableView.dataSource = self
    }
    
    func profilePickerView(){
        let pickers = [weightPickerView, heightPickerView, activityPickerview]
        let textFields = [weightTextField, heightTextField, activityTextField]
        
        let toolbar = UIToolbar()
        toolbar.barStyle = UIBarStyle.default
        toolbar.sizeToFit()
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelButtonTapped))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.doneButtonTapped))
        
        toolbar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        
        func formatTextField_Default(textField: UITextField){
            textField.layer.borderColor = AppColor.red?.cgColor
            textField.layer.borderWidth = 2
            textField.layer.cornerRadius = 10
        }
        
        for picker in pickers{
            picker.delegate = self
            picker.dataSource = self
        }
        
        for textField in textFields{
            textField?.inputAccessoryView = toolbar
            textField?.textAlignment = .center
            formatTextField_Default(textField: textField ?? weightTextField)
        }
        
        weightTextField.inputView = weightPickerView
        heightTextField.inputView = heightPickerView
        activityTextField.inputView = activityPickerview
        
        weightPickerView.tag = 1
        heightPickerView.tag = 2
        activityPickerview.tag = 3
    }
    
    @objc func doneButtonTapped(){
        weightTextField.resignFirstResponder()
        heightTextField.resignFirstResponder()
        activityTextField.resignFirstResponder()
    }
    
    @objc func cancelButtonTapped() {
        weightTextField.resignFirstResponder()
        heightTextField.resignFirstResponder()
        activityTextField.resignFirstResponder()
    }
    
    @IBSegueAction func chartSwiftUISegueHost(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: Charts())
    }
    
    @IBAction func syncSwitchDidChange(_ sender: UISwitch){
        if sender.isOn {
            self.present(createHealthAppAlert(alertMessage: "In order to connect with Health App you must allow WeGain to collect and use burned calorie data. We don't share this data without your consent."), animated: true, completion: nil)
        }
        else {
        }
    }
    
    @IBAction func updateButtonDidTapped(_ sender: Any) {
        let profile_repo = ProfileRepository.shared
        
        let activity_level = activityTextField.text!.prefix(3)
        
        profile_repo.add(gender: "", height: Double(heightTextField.text!)!, weight: Double(weightTextField.text!)!, activity: Double(activity_level)!)
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
        case 2:
            heightTextField.text = heightArray[row]
        case 3:
            activityTextField.text = activityArray[row]
        default:
            return
        }
    }
}

extension UserProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dateHistoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = weightHistoryTableView.dequeueReusableCell(withIdentifier: "historyWeightCell") as! WeightHistoryTableViewCell
        
        cell.dateHistoryWeightLabel.text = String(format: " ", dateHistoryArray[indexPath.section].date! as CVarArg)
        cell.weightHistoryLabel.text = String(format: "%.0fkg", weightHistoryArray[indexPath.section].weight)
        
        return cell
    }
}
