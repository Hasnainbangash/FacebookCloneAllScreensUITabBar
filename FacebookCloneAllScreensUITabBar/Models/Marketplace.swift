//
//  Marketplace.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 27/11/2024.
//

import UIKit

struct Marketplace {
    let type: marketplacePostType
    let mainImage: UIImage?
    let priceLabel: String?
}

enum marketplacePostType {
    case sellCategories
    case todayPicks
    case mainPost
}
