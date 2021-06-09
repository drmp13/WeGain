//
//  OnboardingContentViewController.swift
//  WeGain
//
//  Created by Komang Aryadinata on 09/06/21.
//

import UIKit

class OnboardingContentViewController: UIViewController {

    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.numberOfLines = 0
        }
    }
    
    var index = 0
    var heading = ""
    var subHeading = ""
    var image = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextLabel()
        contentImageView.image = image
    }
    
    func setupTextLabel() {
        let attributedText = NSMutableAttributedString(string: heading, attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 28), NSAttributedString.Key.foregroundColor: UIColor.black])

        attributedText.append(NSAttributedString(string: "\n\n\(subHeading)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.black]))

        titleLabel.attributedText = attributedText
        titleLabel.textAlignment = .center
    }
}
