//
//  FillDetailsViewController.swift
//  WeGain
//
//  Created by Devin Winardi on 12/06/21.
//

import UIKit

class FillDetailsViewController: UIViewController{
    
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var activityTextField: UITextField!
    @IBOutlet weak var startButton: UIButton!
    
    let gender = ["Female", "Male"]
    let height = Array(120...220).map(String.init)
    let weight = Array(20...100).map(String.init)
    let age = Array(1...100).map(String.init)
    let activity = ["1.2 - bed/chair bound", "1.4 - sedentary work", "1.6 - mostly sedentary", "1.8 - mostly standing/walking", "2.0 - heavy activity", "2.2 - significantly heavy activity"]
    
    var genderPickerView = UIPickerView()
    var agePickerView = UIPickerView()
    var heightPickerView = UIPickerView()
    var weightPickerView = UIPickerView()
    var activityPickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPickerView()
    }
    
    func setUpPickerView(){
        let pickers = [genderPickerView,agePickerView, heightPickerView,weightPickerView,activityPickerView]
        
        for picker in pickers{
            picker.delegate = self
            picker.dataSource = self
        }
        
        genderTextField.inputView = genderPickerView
        ageTextField.inputView = agePickerView
        heightTextField.inputView = heightPickerView
        weightTextField.inputView = weightPickerView
        activityTextField.inputView = activityPickerView
        
        genderPickerView.tag = 1
        heightPickerView.tag = 2
        weightPickerView.tag = 3
        activityPickerView.tag = 4
        agePickerView.tag = 5
        
        startButton.layer.cornerRadius = 10
    }
    @IBAction func getStarted(_ sender: Any) {
        let profile_repo = ProfileRepository.shared
        
        let gender = genderTextField.text!
        let age = Int(ageTextField.text!)!
        let height = Double(heightTextField.text!)!
        let weight = Double(weightTextField.text!)!
        let activity_level = Double(activityTextField.text!.prefix(3))!
        
        profile_repo.add(gender: gender, age: age, height: height, weight: weight, activity: activity_level)
        
        let bmi = self.getBMI(gender: gender, weight: weight, height: height, age: age)
        CalorieHistoryRepository.shared.addCalorieHistory(maxCalorie: bmi * activity_level, for: Calendar.current.startOfDay(for: Date()))
        
        ViewRouter.shared.firstLaunched = true
        performSegue(withIdentifier: "ToMainScreen", sender: nil)
    }
    
    func getBMI(gender: String, weight: Double, height: Double, age: Int) -> Double {
        var bmi: Double = 0
        
        if gender == "Male" {
            bmi = 66 + (13.7 * weight) + (5 * height) + (6.8 * Double(age))
        } else {
            bmi = 66.5 + (9.6 * weight) + (1.7 * height) + (4.7 * Double(age))
        }
        
        return bmi
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
        case 5:
            return age.count
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
        case 5:
            return age[row]
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
        case 5:
            ageTextField.text = age[row]
            ageTextField.resignFirstResponder()
        default:
            return
        }
    }
    
    
}
