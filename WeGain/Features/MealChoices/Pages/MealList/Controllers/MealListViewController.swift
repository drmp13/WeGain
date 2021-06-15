//
//  MealListViewController.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit

class MealListViewController: UIViewController {

//    @IBOutlet weak var searchMeal: UISearchBar!
    @IBOutlet weak var mealChoiceKCalLabel: UILabel!
    @IBOutlet weak var addNewMealButton: UIButton!
    @IBOutlet weak var mealListChoiceTableView: UITableView!
    
    var meals = [Meal]()
    var filteredMeals = [Meal]()
    
    var buttonDidTapped = [Bool]()
    var selectedCell = -1
    var selectedMeals = [Meal]()
    
    var type: PlanType?
    
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
    }
    
    @IBAction func AddMealTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ToAddMeal", sender: nil)
    }
    
    @objc func doneTapped(_ sender: UIButton) {
        let today = Calendar.current.startOfDay(for: Date())
        
        for meal in selectedMeals{
            PlanRepository.shared.addPlan(for: today, meal: meal, type: self.type!)
        }
      
        self.navigationController?.popViewController(animated: true)
    }
}

extension MealListViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexSet: IndexSet = [indexPath.section]
        
        if selectedMeals.contains(self.filteredMeals[indexPath.section]) {
            let index = selectedMeals.firstIndex(of: self.filteredMeals[indexPath.section])
            selectedMeals.remove(at: index!)
            tableView.reloadSections(indexSet, with: .automatic)
            return
        }
        
        selectedMeals.append(self.filteredMeals[indexPath.section])
        tableView.reloadSections(indexSet, with: .automatic)

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if buttonDidTapped[indexPath.section] == true{
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
        cell.mealListCellKCalLabel.text = String(format: "%.0fKCal", filteredMeals[indexPath.section].calories)
        cell.detailCarbohydrateWeightLabel.text = String(format: "%.0fg", filteredMeals[indexPath.section].carbohydrate)
        cell.detailProteinWeightLabel.text = String(format: "%.0fg", filteredMeals[indexPath.section].protein)
        cell.detailFatWeightLabel.text = String(format: "%.0fg", filteredMeals[indexPath.section].fat)
        
        
        cell.mealListCellStackView.layer.cornerRadius = 16
        cell.mealListCellStackView.layer.borderWidth = 2
        cell.mealListCellStackView.layer.borderColor = #colorLiteral(red: 0.7647058824, green: 0.1843137255, blue: 0.1529411765, alpha: 1)

    
        cell.actionBlock = {
            //Do whatever you want to do when the button is tapped here
            
            if self.buttonDidTapped[indexPath.section] == false {
                self.buttonDidTapped[indexPath.section] = true
            }else{
                self.buttonDidTapped[indexPath.section] = false
            }
            self.selectedCell = cell.mealListCellChevronButton.tag
            
            if self.buttonDidTapped[indexPath.section] == true {
                cell.mealListCellChevronButton.setImage(UIImage(systemName: "chevron.down"), for: .normal)
            }else{
                cell.mealListCellChevronButton.setImage(UIImage(systemName: "chevron.up"), for: .normal)
            }

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
            
        }
        return cell
    }
}

extension MealListViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            self.filteredMeals = self.meals
        }else{
            self.filteredMeals = self.filteredMeals.filter { meals in
                (meals.name?.contains(searchText))!
            }
        }
        mealListChoiceTableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.filteredMeals = self.meals
        
        mealListChoiceTableView.reloadData()
    }
}
