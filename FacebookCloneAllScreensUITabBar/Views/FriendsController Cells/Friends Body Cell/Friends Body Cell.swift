//
//  Friends Body Cell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 26/11/2024.
//

import UIKit

class Friends_Body_Cell: UITableViewCell {

    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var middleView: UIView!
    @IBOutlet weak var rightView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        // Making the view looked oval
        leftView.layer.cornerRadius = leftView.frame.size.height / 3
        middleView.layer.cornerRadius = middleView.frame.size.height / 3
        rightView.layer.cornerRadius = rightView.frame.size.height / 3
        
    }
    
}
