//
//  ProfileBodyCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 28/11/2024.
//

import UIKit

class ProfileBodyCell: UITableViewCell {

    @IBOutlet weak var profileCoverImage: UIImageView!
    @IBOutlet weak var profileCoverImageCameraOptionsView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileImageCameraOptionsView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var totalFriendsNumberLabel: UILabel!
    @IBOutlet weak var profileBioLabel: UILabel!
    @IBOutlet weak var addToStoryButtonLabel: UIButton!
    @IBOutlet weak var editProfileButtonLabel: UIButton!
    @IBOutlet weak var optionsButtonLabel: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        profileImage.layer.cornerRadius = profileImage.frame.size.height / 2
        
        addToStoryButtonLabel.layer.cornerRadius = addToStoryButtonLabel.frame.size.height / 5
        
        editProfileButtonLabel.layer.cornerRadius = editProfileButtonLabel.frame.size.height / 5
        
        optionsButtonLabel.layer.cornerRadius = optionsButtonLabel.frame.size.height / 5
        
        profileCoverImageCameraOptionsView.layer.cornerRadius = profileCoverImageCameraOptionsView.frame.size.height / 2
        
        profileImageCameraOptionsView.layer.cornerRadius = profileImageCameraOptionsView.frame.size.height / 2

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureData(profileCoverImage: UIImage, profileImage: UIImage, nameLabel: String?, totalFriendsNumberLabel: String?, profileBioLabel: String?) {
        
        self.profileCoverImage.image = profileCoverImage
        self.profileImage.image = profileImage
        self.nameLabel.text = nameLabel
        self.totalFriendsNumberLabel.text = totalFriendsNumberLabel
        self.profileBioLabel.text = profileBioLabel
        
    }
    
    @IBAction func profileCoverImageCameraOptions(_ sender: UIButton) {
    }
    
    @IBAction func profileImageCameraOptions(_ sender: UIButton) {
    }
    
    @IBAction func addToStoryButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func editProfileButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func optionsButtonPressed(_ sender: UIButton) {
    }
}
