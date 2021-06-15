//
//  AddMealViewController.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit

class AddMealViewController: UIViewController {
    

    @IBOutlet weak var textFieldFoodName: UITextField!
    @IBOutlet weak var textFieldEstCalorie: UITextField!
    @IBOutlet weak var textFieldPortion: UITextField!
    @IBOutlet weak var textFieldCarbohydrate: UITextField!
    @IBOutlet weak var textFieldProtein: UITextField!
    @IBOutlet weak var textFieldFat: UITextField!
    @IBOutlet weak var barButtonSaveUI: UIBarButtonItem!
    @IBOutlet weak var barButtonCloseUI: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatTextField_Default(textField: textFieldFoodName)
        formatTextField_Default(textField: textFieldEstCalorie,isDecimalPad: true)
        formatTextField_Default(textField: textFieldPortion,isDecimalPad: true)
        formatTextField_Default(textField: textFieldCarbohydrate,isDecimalPad: true)
        formatTextField_Default(textField: textFieldProtein,isDecimalPad: true)
        formatTextField_Default(textField: textFieldFat,isDecimalPad: true)
        
        barButtonSaveUI.tintColor = UIColor(cgColor: getCGColorByHex(rgbValue: 0xC32F27))
        barButtonCloseUI.tintColor = UIColor(cgColor: getCGColorByHex(rgbValue: 0xC32F27))
    }
    

    @objc func textFieldDidChange() {
        textFieldEstCalorie.text = textFieldEstCalorie.text?.separateDecimal(separator:" ")
        textFieldPortion.text = textFieldPortion.text?.separateDecimal(separator:" ")
        textFieldCarbohydrate.text = textFieldCarbohydrate.text?.separateDecimal(separator:" ")
        textFieldProtein.text = textFieldProtein.text?.separateDecimal(separator:" ")
        textFieldFat.text = textFieldFat.text?.separateDecimal(separator:" ")
    }
    
    func getCGColorByHex(rgbValue: Int) -> CGColor{
        return CGColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16))/255.0, green:((CGFloat)((rgbValue & 0xFF00) >> 8))/255.0, blue:((CGFloat)(rgbValue & 0xFF))/255.0, alpha:1.0)
    }
    
    func formatTextField_Default(textField: UITextField, isDecimalPad: Bool = false){
        textField.layer.borderColor = getCGColorByHex(rgbValue: 0xC32F27)
        textField.layer.borderWidth = 2
        textField.layer.cornerRadius = 10
        
        if(isDecimalPad){
            textField.keyboardType = .decimalPad
            textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        }
        
    }
    
    @IBAction func barButtonSave(_ sender: UIBarButtonItem) {
        let foodName = textFieldFoodName.text
        let estCalorie = Double(textFieldEstCalorie.text?.deseparateDecimal(separator:" ") ?? "0")
        let portion = Double(textFieldPortion.text?.deseparateDecimal(separator:" ") ?? "0")
        let carbohydrate = Double(textFieldCarbohydrate.text?.deseparateDecimal(separator:" ") ?? "0")
        let protein = Double(textFieldProtein.text?.deseparateDecimal(separator:" ") ?? "0")
        let fat = Double(textFieldFat.text?.deseparateDecimal(separator:" ") ?? "0")
        
        if foodName == nil || estCalorie == nil || portion == nil || carbohydrate == nil || protein == nil || fat == nil {
          self.present(createDefaultAlert(alertMessage: "Field cannot be empty!"), animated: true, completion: nil)
        }else{
            MealRepository.shared.add(name: foodName!, cal: estCalorie!, carb: carbohydrate!, protein: protein!, fat: fat!, portion: portion!,is_user:true)
        }
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    @IBAction func test(_ sender: Any) {
        //print(MealRepository.shared.fetch().count)
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = " "
        formatter.numberStyle = .decimal
        return formatter
    }()
}

extension String {
    var formattedWithSeparator: String { Formatter.withSeparator.string(for: self) ?? "" }
}
