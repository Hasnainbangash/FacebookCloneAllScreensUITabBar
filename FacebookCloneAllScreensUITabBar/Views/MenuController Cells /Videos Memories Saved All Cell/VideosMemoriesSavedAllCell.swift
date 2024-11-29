//
//  VideosMemoriesSavedAllCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 29/11/2024.
//

import UIKit

class VideosMemoriesSavedAllCell: UITableViewCell {

    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var memoriesView: UIView!
    @IBOutlet weak var savedView: UIView!
    @IBOutlet weak var groupsView: UIView!
    @IBOutlet weak var marketplaceView: UIView!
    @IBOutlet weak var friendsView: UIView!
    @IBOutlet weak var feedsView: UIView!
    @IBOutlet weak var eventsView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        videoView.layer.cornerRadius = videoView.frame.size.height / 5
        
//        memoriesView.layer.cornerRadius = memoriesView.frame.size.height / 5
//        
//        savedView.layer.cornerRadius = savedView.frame.size.height / 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
