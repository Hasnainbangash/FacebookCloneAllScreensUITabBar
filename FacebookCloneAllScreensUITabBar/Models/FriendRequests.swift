//
//  FriendRequests.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 26/11/2024.
//

import UIKit

struct FriendRequests {
    let type: SectionType
    let mainImage: UIImage
    let nameLabel: String
    let timeLabel: String
    let leftMutualImage: UIImage
    let rightMutualImage: UIImage
    let mutualLabel: String
}

enum SectionType {
    case friends
    case friendsRequest
    case peopleYouMayKnow
}
