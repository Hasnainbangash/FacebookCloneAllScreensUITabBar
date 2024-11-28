//
//  DetailsCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 28/11/2024.
//

import UIKit

class DetailsCell: UITableViewCell {

    @IBOutlet weak var editPublicDetailsButtonLabel: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        editPublicDetailsButtonLabel.layer.cornerRadius = editPublicDetailsButtonLabel.frame.size.height / 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func editPublicDetailsButtonPressed(_ sender: UIButton) {
        
    }
}
