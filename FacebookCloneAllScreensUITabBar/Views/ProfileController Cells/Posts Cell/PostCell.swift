//
//  PostCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 29/11/2024.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var reelView: UIView!
    @IBOutlet weak var liveView: UIView!
    @IBOutlet weak var manageButtonLabel: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        profileImage.layer.cornerRadius = profileImage.frame.size.height / 2
        reelView.layer.cornerRadius = reelView.frame.size.height / 2
        liveView.layer.cornerRadius = liveView.frame.size.height / 2
        manageButtonLabel.layer.cornerRadius = manageButtonLabel.frame.size.height / 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
