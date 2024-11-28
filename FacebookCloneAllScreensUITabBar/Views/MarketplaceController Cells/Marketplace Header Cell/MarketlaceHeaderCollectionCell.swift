//
//  MarketlaceHeaderCollectionCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Muhammad Hasnain Bangash on 28/11/2024.
//

import UIKit

class MarketlaceHeaderCollectionCell: UICollectionViewCell {

    @IBOutlet weak var sellButtonView: UIView!
    @IBOutlet weak var categoriesButtonView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        sellButtonView.layer.cornerRadius = sellButtonView.frame.size.height / 2
        categoriesButtonView.layer.cornerRadius = categoriesButtonView.frame.size.height / 2
        
    }

}
