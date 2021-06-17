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
    var historyArray: [History] = []
    
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
        
        updateButton.layer.cornerRadius = 10
        updateButton.isEnabled = false
        updateButton.alpha = 0.5
        
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

    @IBAction func textFieldChange(_ sender: Any) {
        updateButton.isEnabled = true
        updateButton.alpha = 1.0
    }
    
    
    @IBSegueAction func chartSwiftUISegueHost(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: Charts())
    }
    
    @IBAction func syncSwitchDidChange(_ sender: UISwitch){
        if sender.isOn {
            self.present(createHealthAppAlert(alertMessage: "In order to connect with Health App you must allow WeGain to collect and use burned calorie data. We don't share this data without your consent."), animated: true, completion: nil)
        }
        else {
            syncSwitch.setOn(false, animated: false)
        }
    }
    
    @IBAction func updateButtonDidTapped(_ sender: Any) {
//        ProfileRepository.shared.add(gender: "", height: Double(heightTextField.text!)!, weight: Double(weightTextField.text!)!, activity: Double(activityTextField.text!.prefix(3))!)
    }

    func getHistoryData(){
        let history_repo = HistoryRepository.shared
        let histories = history_repo.fetch()
        
        for hist in histories{
            historyArray.append(hist)
        }
        
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
        return historyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = weightHistoryTableView.dequeueReusableCell(withIdentifier: "historyWeightCell") as! WeightHistoryTableViewCell
      
        let dateHistory = historyArray[indexPath.row].date
        let weightHistory = historyArray[indexPath.row].weight
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "YY/MM/dd"
        
        cell.dateHistoryWeightLabel.text = dateFormatter.string(from: dateHistory!)
        cell.weightHistoryLabel.text = String(weightHistory)
        
        return cell
    }
}
