//
//  ProfileHeaderCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 28/11/2024.
//

import UIKit

class ProfileHeaderCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func threadsButtonPressed(_ sender: UIButton) {
    }
    
}
