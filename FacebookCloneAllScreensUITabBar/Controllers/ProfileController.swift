//
//  ProfileController.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 29/11/2024.
//

import UIKit

class ProfileController: UIViewController {
    
    @IBOutlet weak var profileControllerTableView: UITableView!
    
    var profile = [
        
        Profile(type: .Details, totalFriendsNumber: nil, profileImages: nil, profileNames: nil),
        
        Profile(type: .Friends,
                totalFriendsNumber: "44",
                profileImages: [
                    UIImage(named: "picture5")!,
                    UIImage(named: "picture1")!,
                    UIImage(named: "picture4")!,
                    UIImage(named: "picture2")!,
                    UIImage(named: "picture4")!,
                    UIImage(named: "picture3")!
                ],
                profileNames: [
                    "Franklin",
                    "Michael",
                    "Jimmy",
                    "Trevor",
                    "Ron",
                    "John"
                ]),
        
        Profile(type: .Post, totalFriendsNumber: nil, profileImages: nil, profileNames: nil)
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        profileControllerTableView.dataSource = self
        profileControllerTableView.delegate = self
        
        profileControllerTableView.register(UINib(nibName: K.ProfileCell.NibNames.detailsCellNibName, bundle: nil), forCellReuseIdentifier: K.ProfileCell.Identifiers.detailsCellIdentifier)
        
        profileControllerTableView.register(UINib(nibName: K.ProfileCell.NibNames.friendsCellNibName, bundle: nil), forCellReuseIdentifier: K.ProfileCell.Identifiers.friendsCellIdentifier)
        
        profileControllerTableView.register(UINib(nibName: K.ProfileCell.NibNames.postCellNibName, bundle: nil), forCellReuseIdentifier: K.ProfileCell.Identifiers.postCellIdentifier)
        
        profileControllerTableView.register(UINib(nibName: K.ProfileCell.NibNames.postsPhotosVidoesEventsHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.ProfileCell.Identifiers.postsPhotosVidoesEventsHeaderCellIdentifier)
        
        profileControllerTableView.register(UINib(nibName: K.ProfileCell.NibNames.profileBodyCellNibName, bundle: nil), forCellReuseIdentifier: K.ProfileCell.Identifiers.profileBodyCellIdentifier)
        
        profileControllerTableView.register(UINib(nibName: K.ProfileCell.NibNames.profileHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.ProfileCell.Identifiers.profileHeaderCellIdentifier)
        
    }
    
}

extension ProfileController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return profile.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = profileControllerTableView.dequeueReusableCell(withIdentifier: K.ProfileCell.Identifiers.profileBodyCellIdentifier, for: indexPath) as! ProfileBodyCell
            
            cell.configureData(profileCoverImage: UIImage(named: "picture5")!, profileImage: UIImage(named: "picture3")!, nameLabel: nil, totalFriendsNumberLabel: nil, profileBioLabel: nil)
            
            return cell
            
        case 1:
            
            let profile = profile[indexPath.row]
            
            switch profile.type{
            case .Details:
                
                let cell = profileControllerTableView.dequeueReusableCell(withIdentifier: K.ProfileCell.Identifiers.detailsCellIdentifier, for: indexPath) as! DetailsCell
                
                return cell
                
            case .Friends:
                
                let cell = profileControllerTableView.dequeueReusableCell(withIdentifier: K.ProfileCell.Identifiers.friendsCellIdentifier, for: indexPath) as! FriendsCell
                
                cell.configureData(totalFriendsNumber: profile.totalFriendsNumber ?? "Nil", profileImages: profile.profileImages!, profileNames: profile.profileNames!)
                
                return cell
                
            case .Post:
                
                let cell = profileControllerTableView.dequeueReusableCell(withIdentifier: K.ProfileCell.Identifiers.postCellIdentifier, for: indexPath) as! PostCell
                
                return cell
            }
        default:
            return UITableViewCell()
        }
    }
}

extension ProfileController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 400
        case 1:
            
            let profile = profile[indexPath.row]
            
            switch profile.type {
            case .Details:
                return 300
            case .Friends:
                return 400
            case .Post:
                return 220
            }
        default:
            return 100
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            
            let cell = profileControllerTableView.dequeueReusableCell(withIdentifier: K.ProfileCell.Identifiers.profileHeaderCellIdentifier) as! ProfileHeaderCell
            
            return cell
        
        case 1:
            
            let cell = profileControllerTableView.dequeueReusableCell(withIdentifier: K.ProfileCell.Identifiers.postsPhotosVidoesEventsHeaderCellIdentifier) as! PostsPhotosVidoesEventsHeaderCell
            
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 80
        case 1:
            return 40
        default:
            return 40
        }
    }
    
}
