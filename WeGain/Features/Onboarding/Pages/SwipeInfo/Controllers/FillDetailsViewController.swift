//
//  FillDetailsViewController.swift
//  WeGain
//
//  Created by Devin Winardi on 12/06/21.
//

import UIKit

class FillDetailsViewController: UIViewController{
    
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var activityTextField: UITextField!
    @IBOutlet weak var startButton: UIButton!
    
    let gender = ["Female", "Male", "Prefer not to say"]
    let height = Array(120...220).map(String.init)
    let weight = Array(20...100).map(String.init)
    let activity = ["1.1","1.2"]
    
    var genderPickerView = UIPickerView()
    var heightPickerView = UIPickerView()
    var weightPickerView = UIPickerView()
    var activityPickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPickerView()
    }
    
    func setUpPickerView(){
        let pickers = [genderPickerView,heightPickerView,weightPickerView,activityPickerView]
        
        for picker in pickers{
            picker.delegate = self
            picker.dataSource = self
        }
        
        genderTextField.inputView = genderPickerView
        heightTextField.inputView = heightPickerView
        weightTextField.inputView = weightPickerView
        activityTextField.inputView = activityPickerView
        
        genderTextField.tag = 1
        heightTextField.tag = 2
        weightTextField.tag = 3
        activityTextField.tag = 4
        
        startButton.layer.cornerRadius = 10
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
