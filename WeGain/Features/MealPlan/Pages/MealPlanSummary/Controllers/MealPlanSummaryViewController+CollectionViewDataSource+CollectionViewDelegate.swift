//
//  MealPlanSummaryViewController+CollectionViewDataSource+CollectionViewDelegate.swift
//  WeGain
//
//  Created by Kendra Arsena Wijaya on 11/06/21.
//

import UIKit

var selectedItem = 3

extension MealPlanSummaryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }

    func getDateByCurrentIndex(idx: Int) -> Date? {
      var dateComponents = DateComponents()
      dateComponents.day = idx - 3

      let calendar = Calendar.current
      let date = calendar.date(byAdding: dateComponents, to: Date())

      return date
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "calendarCell", for: indexPath) as! CalendarCell
        let calendar = Calendar.current

        let date = getDateByCurrentIndex(idx: indexPath.row)
        let day = calendar.component(.day, from: date!)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let dayInWeek = dateFormatter.string(from: date!)
        let firstletter = dayInWeek.prefix(1)
        
        cell.calendarCellAlphabetLabel.text = "\(firstletter)"
        cell.calendarCellNumberLabel.text = "\(day)"
        
        if indexPath.row == 3 {
            cell.calendarCellNumberLabel.textColor = AppColor.red
        } else {
            cell.calendarCellNumberLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        if indexPath.row == selectedItem {
            cell.calendarCellView.backgroundColor = AppColor.yellow
        } else {
            cell.calendarCellView.backgroundColor = AppColor.lightyellow
        }
        
        return cell
    }
}

extension MealPlanSummaryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      let selectedDate = helper_formatDate(date: getDateByCurrentIndex(idx: indexPath.row) ?? helper_createDate(date: helper_getCurrentDate(format: "yyyy-MM-dd"),inputDateFormat: "yyyy-MM-dd"))
        print(selectedDate)

        selected_date = selectedDate
        refreshMealPlan(tableView: mealPlanBreakfast)
        refreshMealPlan(tableView: mealPlanLunch)
        refreshMealPlan(tableView: mealPlanDinner)
        selectedItem = indexPath.row
        collectionView.reloadData()

        refreshConstraint()
    }
}
