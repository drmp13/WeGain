//
//  MealListCell.swift
//  WeGain
//
//  Created by Andrean Lay on 07/06/21.
//

import UIKit

//protocol MyCellDelegate: AnyObject{
//    func didTapButtonInCell(_ cell: MealListCell)
//}

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
    
    @IBOutlet weak var mealListCellStackView: UIStackView!
    
    
//    var mealList: Meal? {
//        didSet{
//            setupView()
//        }
//    }
//    
//    private func setupView(){
//
//    }
    
    //BottomView
    @IBOutlet weak var mealListCellDetailView: UIView!
    @IBOutlet weak var detailCarbohydrateLabel: UILabel!
    @IBOutlet weak var detailProteinLabel: UILabel!
    @IBOutlet weak var detailFatLabel: UILabel!
    @IBOutlet weak var detailCarbohydrateWeightLabel: UILabel!
    @IBOutlet weak var detailProteinWeightLabel: UILabel!
    @IBOutlet weak var detailFatWeightLabel: UILabel!
    
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        let bottomSpace: CGFloat = 8.0 // Let's assume the space you want is 10
//        self.contentView.frame = self.contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: bottomSpace, right: 0))
//    }
}
