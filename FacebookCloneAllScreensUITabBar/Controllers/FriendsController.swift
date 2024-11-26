//
//  FriendsController.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 26/11/2024.
//

import UIKit

class FriendsController: UIViewController {
    
    @IBOutlet weak var friendsControllerTableView: UITableView!
    
    var friendsRequest = [
        
        FriendRequests(type: .friendsRequest, mainImage: UIImage(named: "picture5")!, nameLabel: "Franklin", timeLabel: "5", leftMutualImage: UIImage(named: "picture2")!, rightMutualImage: UIImage(named: "picture3")!, mutualLabel: "10 mutual friends"),
        
        FriendRequests(type: .friendsRequest, mainImage: UIImage(named: "picture4")!, nameLabel: "Franklin", timeLabel: "5", leftMutualImage: UIImage(named: "picture4")!, rightMutualImage: UIImage(named: "picture5")!, mutualLabel: "5 mutual friends"),
        
        FriendRequests(type: .friendsRequest, mainImage: UIImage(named: "picture1")!, nameLabel: "Franklin", timeLabel: "5", leftMutualImage: UIImage(named: "picture4")!, rightMutualImage: UIImage(named: "picture5")!, mutualLabel: "5 mutual friends"),
        
        FriendRequests(type: .friendsRequest, mainImage: UIImage(named: "picture3")!, nameLabel: "Franklin", timeLabel: "5", leftMutualImage: UIImage(named: "picture4")!, rightMutualImage: UIImage(named: "picture5")!, mutualLabel: "5 mutual friends"),
    ]
    
    var peopleYouMayKnow = [
        
        FriendRequests(type: .friendsRequest, mainImage: UIImage(named: "picture1")!, nameLabel: "Franklin", timeLabel: "5", leftMutualImage: UIImage(named: "picture2")!, rightMutualImage: UIImage(named: "picture3")!, mutualLabel: "10 mutual friends"),
        
        FriendRequests(type: .friendsRequest, mainImage: UIImage(named: "picture5")!, nameLabel: "Franklin", timeLabel: "5", leftMutualImage: UIImage(named: "picture4")!, rightMutualImage: UIImage(named: "picture5")!, mutualLabel: "5 mutual friends"),
        
        FriendRequests(type: .friendsRequest, mainImage: UIImage(named: "picture3")!, nameLabel: "Franklin", timeLabel: "5", leftMutualImage: UIImage(named: "picture4")!, rightMutualImage: UIImage(named: "picture5")!, mutualLabel: "5 mutual friends"),
        
        FriendRequests(type: .friendsRequest, mainImage: UIImage(named: "picture4")!, nameLabel: "Franklin", timeLabel: "5", leftMutualImage: UIImage(named: "picture4")!, rightMutualImage: UIImage(named: "picture5")!, mutualLabel: "5 mutual friends"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        friendsControllerTableView.dataSource = self
        friendsControllerTableView.delegate = self
        
        friendsControllerTableView.register(UINib(nibName: K.FriendsCell.NibNames.friendsRequestsCellNibName, bundle: nil), forCellReuseIdentifier: K.FriendsCell.Identifiers.friendsRequestsCellIdentifier)
        
        friendsControllerTableView.register(UINib(nibName: K.FriendsCell.NibNames.friendsBodyCellNibName, bundle: nil), forCellReuseIdentifier: K.FriendsCell.Identifiers.friendsBodyCellIdentifier)
        
        friendsControllerTableView.register(UINib(nibName: K.FriendsCell.NibNames.friendsHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.FriendsCell.Identifiers.friendsHeaderCellIdentifier)
        
        friendsControllerTableView.register(UINib(nibName: K.FriendsCell.NibNames.friendsRequestsHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.FriendsCell.Identifiers.friendsRequestsHeaderCellIdentifier)
        
        friendsControllerTableView.register(UINib(nibName: K.FriendsCell.NibNames.peopleYouMayKnowCellNibName, bundle: nil), forCellReuseIdentifier: K.FriendsCell.Identifiers.peopleYouMayKnowCellIdentifier)
        
        friendsControllerTableView.register(UINib(nibName: K.FriendsCell.NibNames.peopleYouMayKnowHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.FriendsCell.Identifiers.peopleYouMayKnowHeaderCellIdentifier)
        
    }
    
}

extension FriendsController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return friendsRequest.count
        case 2:
            return peopleYouMayKnow.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            
            let cell = friendsControllerTableView.dequeueReusableCell(withIdentifier: K.FriendsCell.Identifiers.friendsBodyCellIdentifier, for: indexPath) as! FriendsBodyCell
            return cell
            
        case 1:
            
            let friendRequest = friendsRequest[indexPath.row]
            
            let cell = friendsControllerTableView.dequeueReusableCell(withIdentifier: K.FriendsCell.Identifiers.friendsRequestsCellIdentifier, for: indexPath) as! FriendRequestsCell
            
            cell.configureData(
                mainImage: friendRequest.mainImage,
                nameLabel: friendRequest.nameLabel,
                timeLabel: friendRequest.timeLabel,
                leftMutualImage: friendRequest.leftMutualImage,
                rightMutualImage: friendRequest.rightMutualImage,
                mutualLabel: friendRequest.mutualLabel
            )
            
            return cell
            
        case 2:
            
            let peopleYouMayKnow = peopleYouMayKnow[indexPath.row]
            
            let cell = friendsControllerTableView.dequeueReusableCell(withIdentifier: K.FriendsCell.Identifiers.peopleYouMayKnowCellIdentifier, for: indexPath) as! PeopleYouMayKnowCell
            
            cell.configureData(
                mainImage: peopleYouMayKnow.mainImage,
                nameLabel: peopleYouMayKnow.nameLabel,
                timeLabel: peopleYouMayKnow.timeLabel,
                leftMutualImage: peopleYouMayKnow.leftMutualImage,
                rightMutualImage: peopleYouMayKnow.rightMutualImage,
                mutualLabel: peopleYouMayKnow.mutualLabel
            )
            
            return cell
            
        default:
            return UITableViewCell()
        }
        
    }

}

extension FriendsController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0:
            return 55
        case 1:
            return 100
        case 2:
            return 100
        default:
            return 100
        }
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        switch section {
        case 0:
            
            let cell = friendsControllerTableView.dequeueReusableCell(withIdentifier: K.FriendsCell.Identifiers.friendsHeaderCellIdentifier) as! FriendsHeaderCell
            return cell
    
        case 1:
            
            let cell = friendsControllerTableView.dequeueReusableCell(withIdentifier: K.FriendsCell.Identifiers.friendsRequestsHeaderCellIdentifier) as! FriendsRequestsHeaderCell
            return cell
            
        case 2:
            
            let cell = friendsControllerTableView.dequeueReusableCell(withIdentifier: K.FriendsCell.Identifiers.peopleYouMayKnowHeaderCellIdentifier) as! PeopleYouMayKnowHeaderCell
            return cell
            
        default:
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 55
        case 1:
            return 40
        case 2:
            return 40
        default:
            return 40
        }
    }
    
}
