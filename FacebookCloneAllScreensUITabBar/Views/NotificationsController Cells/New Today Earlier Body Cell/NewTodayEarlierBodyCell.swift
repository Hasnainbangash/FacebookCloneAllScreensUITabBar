//
//  NewTodayEarlierBodyCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 27/11/2024.
//

import UIKit

class NewTodayEarlierBodyCell: UITableViewCell {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var notificationLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureData(mainImage: UIImage, notificationLabel: String, timeLabel: String) {
        self.mainImage.image = mainImage
        self.notificationLabel.text = notificationLabel
        self.timeLabel.text = timeLabel + "h"
    }
    
    @IBAction func optionsButton(_ sender: UIButton) {
        
    }
    
}
