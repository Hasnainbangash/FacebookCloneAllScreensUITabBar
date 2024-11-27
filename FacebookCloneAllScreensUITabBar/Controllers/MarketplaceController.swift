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
        Marketplace(type: .mainPost, mainImage: nil, priceLabel: nil),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        marketplaceControllerTableView.dataSource = self
        marketplaceControllerTableView.delegate = self
        
        marketplaceControllerTableView.register(UINib(nibName: K.MarketplaceCell.NibNames.marketplaceHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.MarketplaceCell.Identifiers.marketplaceHeaderCellIdentifier)
        
        marketplaceControllerTableView.register(UINib(nibName: K.MarketplaceCell.NibNames.sellCategoriesCellNibName, bundle: nil), forCellReuseIdentifier: K.MarketplaceCell.Identifiers.sellCategoriesCellIdentifier)
        
        marketplaceControllerTableView.register(UINib(nibName: K.MarketplaceCell.NibNames.tableViewCellWithCollectionViewCellNibName, bundle: nil), forCellReuseIdentifier: K.MarketplaceCell.Identifiers.tableViewCellWithCollectionViewCellIdentifier)
        
        marketplaceControllerTableView.register(UINib(nibName: K.MarketplaceCell.NibNames.todayPicksCellNibName, bundle: nil), forCellReuseIdentifier: K.MarketplaceCell.Identifiers.todayPicksCellIdentifier)
    
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
        case .mainPost:
            let cell = marketplaceControllerTableView.dequeueReusableCell(withIdentifier: K.MarketplaceCell.Identifiers.tableViewCellWithCollectionViewCellIdentifier, for: indexPath)
            return cell
        }
        
    }
}

extension MarketplaceController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let marketplace = marketPlaces[indexPath.row]
        
        switch marketplace.type {
        case .sellCategories:
            return 55
        case .todayPicks:
            return 50
        case .mainPost:
            return marketplaceControllerTableView.frame.height - 105
        }
    
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell = marketplaceControllerTableView.dequeueReusableCell(withIdentifier: K.MarketplaceCell.Identifiers.marketplaceHeaderCellIdentifier)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
}
