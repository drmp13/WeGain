//
//  MealListViewController.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit

protocol AddNewMealDelegate {
    func add_new_meal()
}

class MealListViewController: UIViewController, AddNewMealDelegate {
    func add_new_meal() {
        self.meals = MealRepository.shared.fetch()
        self.filteredMeals = self.meals
        mealListChoiceTableView.reloadData()
    }

//    @IBOutlet weak var searchMeal: UISearchBar!
    @IBOutlet weak var mealChoiceKCalLabel: UILabel!
    @IBOutlet weak var addNewMealButton: UIButton!
    @IBOutlet weak var mealListChoiceTableView: UITableView!
    
    var delegate: AddNewMealDelegate?
    
    var meals = [Meal]()
    var filteredMeals = [Meal]()
    
    var buttonDidTapped = [Bool]()
    var selectedCell = -1
    var selectedMeals = [Meal]()
    
    var type: PlanType?
    
    var caloriesIntake: Double = 0
    var limitCalories: Double = 900

    var selected_date = helper_getCurrentDate(format: "yyyy-MM-dd")
    
    var alertMoreThan: Bool?
    var alreadyNotifyUserMoreThan = false
    
    var characterMoreThan = [Bool]()
    
    let bottomBorder = CAShapeLayer()
    let bottomPath = UIBezierPath()
    
    var cellsBorder = [CAShapeLayer]()
    var cellsPath = [UIBezierPath]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mealListChoiceTableView.delegate = self
        mealListChoiceTableView.dataSource = self
        
//        searchMeal.delegate = self
        
        let nib = UINib(nibName: "\(MealListCell.self)", bundle: nil)
        mealListChoiceTableView.register(nib, forCellReuseIdentifier: "mealListCell")
        
        self.meals = MealRepository.shared.fetch()
        self.filteredMeals = self.meals
        
        buttonDidTapped = [Bool](repeating: false, count: meals.count)
        characterMoreThan = [Bool](repeating: false, count: meals.count)
        for _ in 0..<meals.count {
            cellsPath.append(UIBezierPath())
            cellsBorder.append(CAShapeLayer())
        }
      
        self.navigationItem.largeTitleDisplayMode = .never
        self.navigationController?.navigationBar.tintColor = AppColor.red
        title = self.type?.rawValue
        
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneTapped))
        self.navigationItem.rightBarButtonItem = doneButton
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.searchController = searchController
        
        alertMoreThan = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAddMeal" {
            if let vc = segue.destination as? AddMealViewController {
                vc.delegate = self
            }
        }
    }
    
    @IBAction func AddMealTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ToAddMeal", sender: nil)
    }
    
    @objc func doneTapped(_ sender: UIButton) {
        let today = Calendar.current.startOfDay(for: Date())
        
        if caloriesIntake < limitCalories - 100 {
            let alert = UIAlertController(title: "Calories Intake", message: "Your calories intake less than the limit, it's recommended to plan according to your calorie recommendation. Do you want to continue?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
                for meal in self.selectedMeals{
                  PlanRepository.shared.addPlan(for: helper_createDate(date: self.selected_date+" 00:00:00 +7"), meal: meal, type: self.type!)
                  _ = self.navigationController?.popViewController(animated: true)
                }
            }))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
        }
        
        print(today)
      
        self.navigationController?.popViewController(animated: true)
    }
}

extension MealListViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexSet: IndexSet = [indexPath.section]
        
        if selectedMeals.contains(self.filteredMeals[indexPath.section]) {
            let index = selectedMeals.firstIndex(of: self.filteredMeals[indexPath.section])
            caloriesIntake -= filteredMeals[indexPath.section].calories
            mealChoiceKCalLabel.text = String(format: "Meal Choices %.0f/900KCal", abs(caloriesIntake))
            selectedMeals.remove(at: index!)
            tableView.reloadSections(indexSet, with: .automatic)
            return
        }
        
        selectedMeals.append(self.filteredMeals[indexPath.section])
        tableView.reloadSections(indexSet, with: .automatic)
        
        caloriesIntake += self.filteredMeals[indexPath.section].calories
        mealChoiceKCalLabel.text = String(format: "Meal Choices %.0f/900KCal", caloriesIntake)
        
        if caloriesIntake > limitCalories + 100 {
            alertMoreThan = true
        }
        
        if alertMoreThan == true && alreadyNotifyUserMoreThan == false{
            let alert = UIAlertController(title: "Calories Intake", message: "Your calories intake exceeds the limit, it's recommended to plan according to your calorie recommendation.", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true)
            
            alreadyNotifyUserMoreThan = true
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if buttonDidTapped[indexPath.section] == true {
            if characterMoreThan[indexPath.section] == true {
                return 221
            }
            return 201
        }else {
            return 72
        }
    }
}

extension MealListViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return filteredMeals.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 8
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mealListCell") as! MealListCell
    
        cell.mealListCellNameLabel.text = filteredMeals[indexPath.section].name
        cell.mealListCellKCalLabel.text = String(format: "%.0fKCal ", filteredMeals[indexPath.section].calories) + String(format: "/ %.0fg", filteredMeals[indexPath.section].portion)
        cell.detailCarbohydrateWeightLabel.text = String(format: "%.0fg", filteredMeals[indexPath.section].carbohydrate)
        cell.detailProteinWeightLabel.text = String(format: "%.0fg", filteredMeals[indexPath.section].protein)
        cell.detailFatWeightLabel.text = String(format: "%.0fg", filteredMeals[indexPath.section].fat)
        
        cell.mealListCellStackView.layer.cornerRadius = 16
        cell.mealListCellStackView.layer.borderWidth = 2
        cell.mealListCellStackView.layer.borderColor = #colorLiteral(red: 0.7647058824, green: 0.1843137255, blue: 0.1529411765, alpha: 1)
        
        cellsBorder[indexPath.section].strokeColor = #colorLiteral(red: 0.7647058824, green: 0.1843137255, blue: 0.1529411765, alpha: 1)
        cellsBorder[indexPath.section].lineWidth = 2.0
        cellsBorder[indexPath.section].fillColor = #colorLiteral(red: 0.7647058824, green: 0.1843137255, blue: 0.1529411765, alpha: 1)
        
        let lengthWord = cell.mealListCellNameLabel.text?.count
        
        cell.actionBlock = { [self] in
            //Do whatever you want to do when the button is tapped here
            
            if self.buttonDidTapped[indexPath.section] == false {
                self.cellsBorder[indexPath.section].removeFromSuperlayer()
                self.buttonDidTapped[indexPath.section] = true
                
                cell.mealListCellChevronButton.setImage(UIImage(systemName: "chevron.up"), for: .normal)
        
                if lengthWord! > 30 {
                    cell.mealListCellNameLabel.numberOfLines = 0
                    
                    self.cellsPath[indexPath.section].move(to: CGPoint(x: 0, y: cell.mealListCellView.frame.maxY + 20))
                    self.cellsPath[indexPath.section].addLine(to: CGPoint(x: cell.mealListCellView.frame.width, y: cell.mealListCellView.frame.maxY + 20))
                    self.cellsBorder[indexPath.section].path = self.cellsPath[indexPath.section].cgPath
                 
                    self.characterMoreThan[indexPath.section] = true
                }else{
                    self.cellsPath[indexPath.section].move(to: CGPoint(x: 0, y: cell.mealListCellView.frame.maxY))
                    self.cellsPath[indexPath.section].addLine(to: CGPoint(x: cell.mealListCellView.frame.width, y: cell.mealListCellView.frame.maxY))
                    self.cellsBorder[indexPath.section].path = self.cellsPath[indexPath.section].cgPath
                }
                
                cell.layer.addSublayer(self.cellsBorder[indexPath.section])
                
            }else{
                cell.mealListCellChevronButton.setImage(UIImage(systemName: "chevron.down"), for: .normal)
                
                self.buttonDidTapped[indexPath.section] = false
                cell.mealListCellNameLabel.numberOfLines = 1

                print("[DEBUG] Removing line on row \(indexPath.section)")
                self.cellsBorder[indexPath.section].removeFromSuperlayer()
            }
            
            self.selectedCell = cell.mealListCellChevronButton.tag

            tableView.beginUpdates()
            tableView.endUpdates()
            tableView.deselectRow(at: indexPath, animated: true)
            
        }
        
        if selectedMeals.contains(self.filteredMeals[indexPath.section]) {
            cell.mealListCellDetailView.backgroundColor = .clear
            cell.mealListCellView.backgroundColor = .clear
            cell.mealListCellStackView.backgroundColor = #colorLiteral(red: 0.7647058824, green: 0.1843137255, blue: 0.1529411765, alpha: 1)
            cell.detailCarbohydrateWeightLabel.textColor = .white
            cell.detailCarbohydrateLabel.textColor = .white
            cell.detailFatLabel.textColor = .white
            cell.detailFatWeightLabel.textColor = .white
            cell.detailProteinLabel.textColor = .white
            cell.detailProteinWeightLabel.textColor = .white
            cell.mealListCellKCalLabel.textColor = .white
            cell.mealListCellNameLabel.textColor = .white
            cell.mealListCellChevronButton.tintColor = .white
            
            cell.mealListCellStackView.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            cell.mealListCellStackView.layer.borderWidth = 2
            cell.mealListCellStackView.layer.cornerRadius = 16
            
            if self.buttonDidTapped[indexPath.section] == true {
                if lengthWord! > 30 {
                    cell.mealListCellNameLabel.numberOfLines = 0
                }
                cell.mealListCellChevronButton.setImage(UIImage(systemName: "chevron.up"), for: .normal)
            }else{
                cell.mealListCellChevronButton.setImage(UIImage(systemName: "chevron.down"), for: .normal)
            }
            
            cellsBorder[indexPath.section].strokeColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            cellsBorder[indexPath.section].fillColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            cellsBorder[indexPath.section].removeFromSuperlayer()
            cell.mealListCellView.layer.addSublayer(self.cellsBorder[indexPath.section])
            
        }else{
            cell.mealListCellDetailView.backgroundColor = .white
            cell.mealListCellView.backgroundColor = .white
            cell.mealListCellStackView.backgroundColor = .white
            cell.detailCarbohydrateWeightLabel.textColor = #colorLiteral(red: 0.2235294118, green: 0.2235294118, blue: 0.2274509804, alpha: 1)
            cell.detailCarbohydrateLabel.textColor = #colorLiteral(red: 0.2235294118, green: 0.2235294118, blue: 0.2274509804, alpha: 1)
            cell.detailFatLabel.textColor = #colorLiteral(red: 0.2235294118, green: 0.2235294118, blue: 0.2274509804, alpha: 1)
            cell.detailFatWeightLabel.textColor = #colorLiteral(red: 0.2235294118, green: 0.2235294118, blue: 0.2274509804, alpha: 1)
            cell.detailProteinLabel.textColor = #colorLiteral(red: 0.2235294118, green: 0.2235294118, blue: 0.2274509804, alpha: 1)
            cell.detailProteinWeightLabel.textColor = #colorLiteral(red: 0.2235294118, green: 0.2235294118, blue: 0.2274509804, alpha: 1)
            cell.mealListCellKCalLabel.textColor = #colorLiteral(red: 0.2235294118, green: 0.2235294118, blue: 0.2274509804, alpha: 1)
            cell.mealListCellNameLabel.textColor = #colorLiteral(red: 0.2235294118, green: 0.2235294118, blue: 0.2274509804, alpha: 1)
            cell.mealListCellChevronButton.tintColor = #colorLiteral(red: 0.7647058824, green: 0.1843137255, blue: 0.1529411765, alpha: 1)
            
            cell.mealListCellStackView.layer.borderColor = #colorLiteral(red: 0.7647058824, green: 0.1843137255, blue: 0.1529411765, alpha: 1)
            cell.mealListCellStackView.layer.borderWidth = 2
            cell.mealListCellStackView.layer.cornerRadius = 16
            
            if self.buttonDidTapped[indexPath.section] == true {
                if lengthWord! > 30 {
                    cell.mealListCellNameLabel.numberOfLines = 0
                }
                cell.mealListCellChevronButton.setImage(UIImage(systemName: "chevron.up"), for: .normal)
            }else{
                cell.mealListCellChevronButton.setImage(UIImage(systemName: "chevron.down"), for: .normal)
            }
            
            cellsBorder[indexPath.section].strokeColor = #colorLiteral(red: 0.7647058824, green: 0.1843137255, blue: 0.1529411765, alpha: 1)
            cellsBorder[indexPath.section].fillColor = #colorLiteral(red: 0.7647058824, green: 0.1843137255, blue: 0.1529411765, alpha: 1)
            cellsBorder[indexPath.section].removeFromSuperlayer()
            cell.mealListCellView.layer.addSublayer(self.cellsBorder[indexPath.section])
        }
        return cell
    }
}

extension MealListViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            self.filteredMeals = self.meals
        }else{
            self.filteredMeals = self.meals.filter { meals in
                meals.name?.range(of: "\(searchText)", options: .caseInsensitive) != nil
            }
        }
        mealListChoiceTableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.filteredMeals = self.meals
        
        mealListChoiceTableView.reloadData()
    }
}
