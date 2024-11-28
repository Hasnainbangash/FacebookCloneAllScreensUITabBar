//
//  FriendsCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 28/11/2024.
//

import UIKit

class FriendsCell: UITableViewCell {

    @IBOutlet weak var totalFriendsNumber: UILabel!
    @IBOutlet weak var firstProfileImage: UIImageView!
    @IBOutlet weak var secondProfileImage: UIImageView!
    @IBOutlet weak var thirdProfileImage: UIImageView!
    @IBOutlet weak var fourthProfileImage: UIImageView!
    @IBOutlet weak var fifthProfileImage: UIImageView!
    @IBOutlet weak var sixthProfileImage: UIImageView!
    
    @IBOutlet weak var firstProfileName: UILabel!
    @IBOutlet weak var secondProfileName: UILabel!
    @IBOutlet weak var thirdProfileName: UILabel!
    @IBOutlet weak var fourthProfileName: UILabel!
    @IBOutlet weak var fifthProfileName: UILabel!
    @IBOutlet weak var sixthProfileName: UILabel!
    
    @IBOutlet weak var seeAllFriendsButtonLabel: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        seeAllFriendsButtonLabel.layer.cornerRadius = seeAllFriendsButtonLabel.frame.size.height / 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureData(totalFriendsNumber: String, profileImages: [UIImage], profileNames: [String]) {
        
        self.totalFriendsNumber.text = totalFriendsNumber
        
        self.firstProfileImage.image = profileImages[0]
        self.secondProfileImage.image = profileImages[1]
        self.thirdProfileImage.image = profileImages[2]
        self.fourthProfileImage.image = profileImages[3]
        self.fifthProfileImage.image = profileImages[4]
        self.sixthProfileImage.image = profileImages[5]
        
        self.firstProfileName.text = profileNames[0]
        self.secondProfileName.text = profileNames[1]
        self.thirdProfileName.text = profileNames[2]
        self.fourthProfileName.text = profileNames[3]
        self.fifthProfileName.text = profileNames[4]
        self.sixthProfileName.text = profileNames[5]
        
    }
    
    
    @IBAction func seeAllFriendsButtonPressed(_ sender: UIButton) {
    }
}
