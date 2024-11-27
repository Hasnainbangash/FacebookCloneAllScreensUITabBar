//
//  SellCategoriesCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 27/11/2024.
//

import UIKit

class SellCategoriesCell: UITableViewCell {

    @IBOutlet weak var sellButtonView: UIView!
    @IBOutlet weak var categoriesButtonView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        sellButtonView.layer.cornerRadius = sellButtonView.frame.size.height / 2
        categoriesButtonView.layer.cornerRadius = categoriesButtonView.frame.size.height / 2
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func sellButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func categoriesButtonPressed(_ sender: UIButton) {
    }
    
}
