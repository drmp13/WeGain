//
//  FillDetailsViewController.swift
//  WeGain
//
//  Created by Devin Winardi on 12/06/21.
//

import UIKit

class FillDetailsViewController: UIViewController{
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var activityTextField: UITextField!
    @IBOutlet weak var startButton: UIButton!
    
    let gender = ["Female", "Male"]
    let height = Array(120...220).map(String.init)
    let weight = Array(20...100).map(String.init)
    let activity = ["1.2 - bed/chair bound", "1.4 - sedentary work", "1.6 - mostly sedentary", "1.8 - mostly standing/walking", "2.0 - heavy activity", "2.2 - significantly heavy activity"]
    
    var genderPickerView = UIPickerView()
    var heightPickerView = UIPickerView()
    var weightPickerView = UIPickerView()
    var activityPickerView = UIPickerView()
    var birthdayDatePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPickerView()
    }
    
    func setUpPickerView(){
        let pickers = [genderPickerView, heightPickerView,weightPickerView,activityPickerView]
        
        for picker in pickers{
            picker.delegate = self
            picker.dataSource = self
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        birthdayTextField.text = "\(formatter.string(from: Date()))"
        
        
        genderTextField.inputView = genderPickerView
        heightTextField.inputView = heightPickerView
        weightTextField.inputView = weightPickerView
        activityTextField.inputView = activityPickerView
        birthdayTextField.inputView = birthdayDatePicker
        
        genderPickerView.tag = 1
        heightPickerView.tag = 2
        weightPickerView.tag = 3
        activityPickerView.tag = 4
        
        startButton.layer.cornerRadius = 10
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = AppColor.red
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(self.doneBirthdayPicker))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(self.cancelBirthdayPicker))
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        birthdayDatePicker.maximumDate = Date()
        birthdayDatePicker.datePickerMode = .date
        birthdayDatePicker.preferredDatePickerStyle = .wheels
        birthdayTextField.inputAccessoryView = toolBar
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        genderPickerView.selectRow(gender.firstIndex(of: genderTextField.text!)!, inComponent: 0, animated: false)
        heightPickerView.selectRow(height.firstIndex(of: heightTextField.text!)!, inComponent: 0, animated: false)
        weightPickerView.selectRow(weight.firstIndex(of: weightTextField.text!)!, inComponent: 0, animated: false)
        activityPickerView.selectRow(activity.firstIndex(of: activityTextField.text!)!, inComponent: 0, animated: false)
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

    @IBAction func getStarted(_ sender: Any) {
        let profile_repo = ProfileRepository.shared
        
        let gender = genderTextField.text!
        let height = Double(heightTextField.text!)!
        let weight = Double(weightTextField.text!)!
        let activity_level = Double(activityTextField.text!.prefix(3))!
        
        profile_repo.add(gender: gender, birthday: birthdayDatePicker.date, height: height, weight: weight, activity: activity_level)
        
        let profile = ProfileRepository.shared.fetch()
        CalorieHistoryRepository.shared.addCalorieHistory(maxCalorie: profile.calorieIntake + 500, for: helper_getStartOfDay())
        
        ViewRouter.shared.firstLaunched = true
        performSegue(withIdentifier: "ToMainScreen", sender: nil)
    }
}

extension FillDetailsViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return gender.count
        case 2:
            return height.count
        case 3:
            return weight.count
        case 4:
            return activity.count
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return gender[row]
        case 2:
            return height[row]
        case 3:
            return weight[row]
        case 4:
            return activity[row]
        default:
            return "Data not found"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            genderTextField.text = gender[row]
            genderTextField.resignFirstResponder()
        case 2:
            heightTextField.text = height[row]
            heightTextField.resignFirstResponder()
        case 3:
            weightTextField.text = weight[row]
            weightTextField.resignFirstResponder()
        case 4:
            activityTextField.text = activity[row]
            activityTextField.resignFirstResponder()
        default:
            return
        }
    }
    
    
}
