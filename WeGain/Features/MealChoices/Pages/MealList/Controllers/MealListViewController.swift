//
//  MealListViewController.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit

class MealListViewController: UIViewController {

    @IBOutlet weak var searchMeal: UISearchBar!
    @IBOutlet weak var mealChoiceKCalLabel: UILabel!
    @IBOutlet weak var addNewMealButton: UIButton!
    @IBOutlet weak var mealListChoiceTableView: UITableView!
    
//    var meals = [
//        MealRepository.shared.fetch()
//    ]
    
    var buttonDidTapped: [Bool] = [false,false]
    var selectedCell = -1
    
    
    struct mealTest {
        var name: String
        var kcal: String
        var karbo: String
        var protein: String
        var fat: String
    }
    
    let testaja = [
        mealTest(name: "Bubur Ayam (300g)", kcal: "150KCal", karbo: "150g", protein: "50g", fat: "40g"),
        mealTest(name: "Sate Ayam (45g)", kcal: "50KCal", karbo: "10g", protein: "10g", fat: "30g")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mealListChoiceTableView.delegate = self
        mealListChoiceTableView.dataSource = self
        
        let nib = UINib(nibName: "\(MealListCell.self)", bundle: nil)
        mealListChoiceTableView.register(nib, forCellReuseIdentifier: "mealListCell")
        
        print("\(MealListCell.self)")
        
        
    }

}

extension MealListViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if buttonDidTapped[indexPath.row] == true{
            return 201
        }else {
            return 72
        }
    }
}

extension MealListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testaja.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mealListCell") as! MealListCell
        
        cell.mealListCellNameLabel.text = testaja[indexPath.row].name
        cell.mealListCellKCalLabel.text = testaja[indexPath.row].kcal
        cell.detailCarbohydrateWeightLabel.text = testaja[indexPath.row].karbo
        cell.detailProteinWeightLabel.text = testaja[indexPath.row].protein
        cell.detailFatWeightLabel.text = testaja[indexPath.row].fat
    
        cell.actionBlock = {
            //Do whatever you want to do when the button is tapped here
            
            self.buttonDidTapped[indexPath.row].toggle()
            self.selectedCell = cell.mealListCellChevronButton.tag
            
            if self.buttonDidTapped[indexPath.row] == true {
                cell.mealListCellChevronButton.setImage(UIImage(systemName: "chevron.down"), for: .normal)
            }else{
                cell.mealListCellChevronButton.setImage(UIImage(systemName: "chevron.up"), for: .normal)
            }

            tableView.beginUpdates()
            tableView.endUpdates()
            tableView.deselectRow(at: indexPath, animated: true)
            
            print(self.buttonDidTapped)
        }
        return cell
    }
}
