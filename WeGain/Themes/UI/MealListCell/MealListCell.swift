//
//  MealListCell.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit

protocol MyCellDelegate: AnyObject{
    func didTapButtonInCell(_ cell: MealListCell)
}

class MealListCell: UITableViewCell {
    
    var actionBlock: (() -> Void)? = nil
    
//    var delegate: MyCellDelegate?
    
    //TopView
    @IBOutlet weak var mealListCellNameLabel: UILabel!
    @IBOutlet weak var mealListCellKCalLabel: UILabel!
    @IBOutlet weak var mealListCellChevronButton: UIButton!
    @IBOutlet weak var mealListCellView: UIView!
    
    @IBAction func didTapButton(sender: UIButton) {
//        delegate?.didTapButtonInCell(self)
        actionBlock?()
    }
    
    //BottomView
    @IBOutlet weak var mealListCellDetailView: UIView!
    @IBOutlet weak var detailCarbohydrateLabel: UILabel!
    @IBOutlet weak var detailProteinLabel: UILabel!
    @IBOutlet weak var detailFatLabel: UILabel!
    @IBOutlet weak var detailCarbohydrateWeightLabel: UILabel!
    @IBOutlet weak var detailProteinWeightLabel: UILabel!
    @IBOutlet weak var detailFatWeightLabel: UILabel!
    
}
