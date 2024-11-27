//
//  MarketplaceController.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 27/11/2024.
//

import UIKit

class MarketplaceController: UIViewController {
    
    @IBOutlet weak var marketplaceControllerTableView: UITableView!
    
    var marketPlaces = [
        Marketplace(type: .sellCategories, mainImage: nil, priceLabel: nil),
        Marketplace(type: .todayPicks, mainImage: nil, priceLabel: nil),
        Marketplace(type: .mainPost, mainImage: UIImage(named: "picture3"), priceLabel: "Rs 10,000 Toyota"),
        Marketplace(type: .mainPost, mainImage: UIImage(named: "picture5"), priceLabel: "Rs 50,0000 Carolla"),
        Marketplace(type: .mainPost, mainImage: UIImage(named: "picture1"), priceLabel: "Rs 700,000 Jeep"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
}

extension MarketplaceController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marketPlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let marketplace = marketPlaces[indexPath.row]
        
        switch marketplace.type {
        case .sellCategories:
            
            let cell = marketplaceControllerTableView.dequeueReusableCell(withIdentifier: K.MarketplaceCell.Identifiers.sellCategoriesCellIdentifier, for: indexPath) as! SellCategoriesCell
            return cell
            
        case .todayPicks:
            
            let cell = marketplaceControllerTableView.dequeueReusableCell(withIdentifier: K.MarketplaceCell.Identifiers.todayPicksCellIdentifier, for: indexPath) as! TodayPicksCell
            return cell
            
            
        // Collection cell yahna pe add karna ha main wala jo ha wo wala
//        case .mainPost:
//            let cell =
            
        default:
            return UITableViewCell()
        }
    }
    
    
}
