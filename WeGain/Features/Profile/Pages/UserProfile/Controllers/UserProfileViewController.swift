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
    
    var profile = ProfileRepository.shared.fetch()
    
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var activityTextField: UITextField!
    
    let weightArray = Array(20...100).map(String.init)
    let heightArray = Array(120...220).map(String.init)
    let activityArray = ["1.2 - bed/chair bound", "1.4 - sedentary work", "1.6 - mostly sedentary", "1.8 - mostly standing/walking", "2.0 - heavy activity", "2.2 - significantly heavy activity" ]
    var historyArray: [History] = []
    
    var birthdayDatePicker = UIDatePicker()
    var weightPickerView = UIPickerView()
    var heightPickerView = UIPickerView()
    var activityPickerview = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePickerView()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        birthdayTextField.text = "\(formatter.string(from: profile.birthday))"
        
        weightTextField.text = String(format: "%.0f", profile.weight)
        heightTextField.text = String(format: "%.0f", profile.height)
        activityTextField.text = profile.activityDescription
        
        
        weightHistoryTableView.delegate = self
        weightHistoryTableView.dataSource = self
        
        updateButton.alpha = 0.5
        updateButton.layer.cornerRadius = 10
        updateButton.isEnabled = false
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = AppColor.red
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(self.doneBirthdayPicker))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(self.cancelBirthdayPicker))
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        birthdayDatePicker.date = profile.birthday
        birthdayDatePicker.maximumDate = Date()
        birthdayDatePicker.datePickerMode = .date
        birthdayDatePicker.preferredDatePickerStyle = .wheels
        birthdayTextField.inputView = birthdayDatePicker
        birthdayTextField.inputAccessoryView = toolBar
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        heightPickerView.selectRow(heightArray.firstIndex(of: heightTextField.text!)!, inComponent: 0, animated: false)
        weightPickerView.selectRow(weightArray.firstIndex(of: weightTextField.text!)!, inComponent: 0, animated: false)
        activityPickerview.selectRow(activityArray.firstIndex(of: profile.activityDescription)!, inComponent: 0, animated: false)
    }
    
    func profilePickerView(){
        let pickers = [weightPickerView, heightPickerView, activityPickerview]
        let textFields = [weightTextField, heightTextField, activityTextField, birthdayTextField]
        
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
    
    @objc func cancelBirthdayPicker() {
        birthdayTextField.resignFirstResponder()
    }
    
    @objc func doneBirthdayPicker() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"

        birthdayTextField.text = "\(formatter.string(from: birthdayDatePicker.date))"

        birthdayTextField.resignFirstResponder()
    }
    
    @objc func doneButtonTapped(){
        birthdayTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
        heightTextField.resignFirstResponder()
        activityTextField.resignFirstResponder()
    }
    
    @objc func cancelButtonTapped() {
        birthdayTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
        heightTextField.resignFirstResponder()
        activityTextField.resignFirstResponder()
    }
    
    @IBAction func textFieldChange(_ sender: Any) {
        updateButton.isEnabled = true
        updateButton.alpha = 1.0
    }
    
    @IBSegueAction func chartSwiftUISegueHost(_ coder: NSCoder) -> UIViewController? {
        getHistoryData()
        let charts = Charts(histories: self.historyArray)
        
        return UIHostingController(coder: coder, rootView: charts)
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
        let height = Double(heightTextField.text!)!
        let weight = Double(weightTextField.text!)!
        let activity_level = Double(activityTextField.text!.prefix(3))!
        
        
        profile.birthday = birthdayDatePicker.date
        profile.height = height
        profile.weight = weight
        profile.activity = activity_level
        
        ProfileRepository.shared.edit(profile: self.profile)
        
        updateButton.isEnabled = false
        updateButton.alpha = 0.5
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
