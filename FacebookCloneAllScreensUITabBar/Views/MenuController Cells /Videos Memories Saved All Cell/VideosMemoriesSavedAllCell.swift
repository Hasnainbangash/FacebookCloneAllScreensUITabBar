//
//  VideosMemoriesSavedAllCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 29/11/2024.
//

import UIKit

protocol VideosMemoriesSavedAllCellDelegate: AnyObject {
    func didPressButton(withTag tag: Int)
}

class VideosMemoriesSavedAllCell: UITableViewCell {

    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var memoriesView: UIView!
    @IBOutlet weak var savedView: UIView!
    @IBOutlet weak var groupsView: UIView!
    @IBOutlet weak var marketplaceView: UIView!
    @IBOutlet weak var friendsView: UIView!
    @IBOutlet weak var feedsView: UIView!
    @IBOutlet weak var eventsView: UIView!
    
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var memoriesButton: UIButton!
    @IBOutlet weak var savedButton: UIButton!
    @IBOutlet weak var groupsButton: UIButton!
    @IBOutlet weak var marketPlaceButton: UIButton!
    @IBOutlet weak var friendsButton: UIButton!
    @IBOutlet weak var feedsButton: UIButton!
    @IBOutlet weak var evenstButton: UIButton!
    
    var delegate: VideosMemoriesSavedAllCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        videoView.layer.cornerRadius = videoView.frame.size.height / 5
        
//        memoriesView.layer.cornerRadius = memoriesView.frame.size.height / 5
//        
//        savedView.layer.cornerRadius = savedView.frame.size.height / 5
        videoButton.tag = 1
        memoriesButton.tag = 2
        savedButton.tag = 3
        groupsButton.tag = 4
        marketPlaceButton.tag = 5
        friendsButton.tag = 6
        feedsButton.tag = 7
        evenstButton.tag = 8
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.tag)
        delegate?.didPressButton(withTag: sender.tag)
    }
}
