//
//  WeightHistoryTableViewCell.swift
//  WeGain
//
//  Created by Komang Aryadinata on 14/06/21.
//

import UIKit

class WeightHistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var historyWeightView: UIView!
    @IBOutlet weak var dateHistoryWeightLabel: UILabel!
    @IBOutlet weak var weightHistoryLabel: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
