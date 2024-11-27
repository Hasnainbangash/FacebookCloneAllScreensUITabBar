//
//  TableViewCellWithCollectionView.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 27/11/2024.
//

import UIKit

class TableViewCellWithCollectionView: UITableViewCell {

    @IBOutlet weak var contentCollectionView: UICollectionView!
    
    var marketPlaceController = MarketplaceController()
    
    var collectionViewMarketplace = [
        CollectionViewMarketPlace(mainImage: UIImage(named: "picture5")!, priceLabel: "Rs 10,000 Toyota"),
        CollectionViewMarketPlace(mainImage: UIImage(named: "picture3")!, priceLabel: "Rs 50,000 Carolla"),
        CollectionViewMarketPlace(mainImage: UIImage(named: "picture1")!, priceLabel: "Rs 700,000 Ford"),
        CollectionViewMarketPlace(mainImage: UIImage(named: "picture2")!, priceLabel: "Rs 10,000 Honda"),
        CollectionViewMarketPlace(mainImage: UIImage(named: "picture4")!, priceLabel: "Rs 50,0000 BMW"),
        CollectionViewMarketPlace(mainImage: UIImage(named: "picture1")!, priceLabel: "Rs 470,000 Mercedes"),
        CollectionViewMarketPlace(mainImage: UIImage(named: "picture5")!, priceLabel: "Rs 20,000 Lexus"),
        CollectionViewMarketPlace(mainImage: UIImage(named: "picture4")!, priceLabel: "Rs 50,000 Suzuki"),
        CollectionViewMarketPlace(mainImage: UIImage(named: "picture2")!, priceLabel: "Rs 170,000 Bently")
    ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        contentCollectionView.dataSource = self
        contentCollectionView.delegate = self
        
        contentCollectionView.register(UINib(nibName: K.MarketplaceCell.NibNames.pictureLabelCollectionViewCellNibName, bundle: nil), forCellWithReuseIdentifier: K.MarketplaceCell.Identifiers.pictureLabelCollectionViewCellIdentifier)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension TableViewCellWithCollectionView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionViewMarketplace.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let marketplace = collectionViewMarketplace[indexPath.row]
        
        let cell = contentCollectionView.dequeueReusableCell(withReuseIdentifier: K.MarketplaceCell.Identifiers.pictureLabelCollectionViewCellIdentifier, for: indexPath) as! PictureLabelCollectionViewCell
        
        cell.configureData(mainImage: marketplace.mainImage, priceLabel: marketplace.priceLabel)
        
        return cell
    }
    
    
}

extension TableViewCellWithCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemPerRow: CGFloat = UIDevice.current.userInterfaceIdiom == .pad ? 4 : 2
        let padding: CGFloat = 10
        let totalPadding = padding * (itemPerRow - 1)
        let availableWidth = contentCollectionView.frame.width - totalPadding
        let itemWidth = availableWidth / itemPerRow

        return CGSize(width: itemWidth, height: itemWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
}