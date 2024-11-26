//
//  FriendRequestsCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 26/11/2024.
//

import UIKit

class FriendRequestsCell: UITableViewCell {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var leftMutualImage: UIImageView!
    @IBOutlet weak var rightMutualImage: UIImageView!
    @IBOutlet weak var mutualLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // Making the images look rounded
        mainImageView.layer.cornerRadius = mainImageView.frame.size.height / 3
        leftMutualImage.layer.cornerRadius = leftMutualImage.frame.size.height / 3
        rightMutualImage.layer.cornerRadius = rightMutualImage.frame.size.height / 3
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureData(mainImageView: UIImage, nameLabel: String, timeLabel: String, leftMutualImage: UIImage, rightMutualImage: UIImage, mutualLabel: String) {
        self.mainImageView.image = mainImageView
        self.nameLabel.text = nameLabel
        self.timeLabel.text = timeLabel + "h"
        self.leftMutualImage.image = leftMutualImage
        self.rightMutualImage.image = rightMutualImage
        self.mutualLabel.text = mutualLabel
    }
    
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func deleteButtonPressed(_ sender: Any) {
    }
    
}
