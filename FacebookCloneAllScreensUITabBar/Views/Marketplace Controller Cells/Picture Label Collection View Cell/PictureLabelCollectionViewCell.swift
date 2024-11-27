//
//  PictureLabelCollectionViewCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 27/11/2024.
//

import UIKit

class PictureLabelCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureData(mainImage: UIImage, priceLabel : String) {
        self.mainImage.image = mainImage
        self.priceLabel.text = priceLabel
    }
    
}
