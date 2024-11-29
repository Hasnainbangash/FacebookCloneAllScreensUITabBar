//
//  Profile.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 29/11/2024.
//

import UIKit

struct Profile {
    var type: profileType
    let totalFriendsNumber: String?
    let profileImages: [UIImage]?
    let profileNames: [String]?
}

enum profileType {
    case Details
    case Friends
    case Post
}
