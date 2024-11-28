//
//  PostsPhotosVidoesEventsHeaderCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 28/11/2024.
//

import UIKit

class PostsPhotosVidoesEventsHeaderCell: UITableViewCell {

    @IBOutlet weak var postsButtonLabel: UIButton!
    @IBOutlet weak var photosButtonLabel: UIButton!
    @IBOutlet weak var videosButtonLabel: UIButton!
    @IBOutlet weak var eventsButtonLabel: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        postsButtonLabel.layer.cornerRadius = postsButtonLabel.frame.size.height / 2
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func postsButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func photosButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func videosButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func eventsButtonPressed(_ sender: UIButton) {
        
    }
}
