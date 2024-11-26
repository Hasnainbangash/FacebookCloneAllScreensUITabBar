//
//  PeopleYouMayKnowCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 26/11/2024.
//

import UIKit

class PeopleYouMayKnowCell: UITableViewCell {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var leftMutualImage: UIImageView!
    @IBOutlet weak var rightMutualImage: UIImageView!
    @IBOutlet weak var mutualLabel: UILabel!
    
    @IBOutlet weak var addButtonLabel: UIButton!
    @IBOutlet weak var deleteButtonLabel: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // Making the images look rounded
        mainImageView.layer.cornerRadius = mainImageView.frame.size.height / 2
        leftMutualImage.layer.cornerRadius = leftMutualImage.frame.size.height / 2
        rightMutualImage.layer.cornerRadius = rightMutualImage.frame.size.height / 2
        
        
        addButtonLabel.layer.cornerRadius = addButtonLabel.frame.size.height / 5
        
        deleteButtonLabel.layer.cornerRadius = deleteButtonLabel.frame.size.height / 5

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureData(mainImage: UIImage, nameLabel: String, timeLabel: String, leftMutualImage: UIImage, rightMutualImage: UIImage, mutualLabel: String) {
        self.mainImageView.image = mainImage
        self.nameLabel.text = nameLabel
        self.timeLabel.text = timeLabel + "h"
        self.leftMutualImage.image = leftMutualImage
        self.rightMutualImage.image = rightMutualImage
        self.mutualLabel.text = mutualLabel
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func deleteButtonPressed(_ sender: Any) {
    }
    
}
