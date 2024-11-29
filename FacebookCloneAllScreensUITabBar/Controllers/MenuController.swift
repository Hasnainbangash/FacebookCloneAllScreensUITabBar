//
//  MenuController.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 29/11/2024.
//

import UIKit

class MenuController: UIViewController {

    @IBOutlet weak var menuControllerTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        menuControllerTableView.dataSource = self
        menuControllerTableView.delegate = self
        
        menuControllerTableView.register(UINib(nibName: K.MenuCell.NibNames.alsoFromMetaBodyCellNibName, bundle: nil), forCellReuseIdentifier: K.MenuCell.Identifiers.alsoFromMetaBodyCellIdentifier)
        
        menuControllerTableView.register(UINib(nibName: K.MenuCell.NibNames.alsoFromMetaHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.MenuCell.Identifiers.alsoFromMetaHeaderCellIdentifier)
       
        menuControllerTableView.register(UINib(nibName: K.MenuCell.NibNames.helpAndSupportBodyCellNibName, bundle: nil), forCellReuseIdentifier: K.MenuCell.Identifiers.helpAndSupportBodyCellIdentifier)
        
        menuControllerTableView.register(UINib(nibName: K.MenuCell.NibNames.helpAndSupportHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.MenuCell.Identifiers.helpAndSupportHeaderCellIdentifier)
        
        menuControllerTableView.register(UINib(nibName: K.MenuCell.NibNames.logoutCellNibName, bundle: nil), forCellReuseIdentifier: K.MenuCell.Identifiers.logoutCellCellIdentifier)
        
        menuControllerTableView.register(UINib(nibName: K.MenuCell.NibNames.nameCreateAccountCellNibName, bundle: nil), forCellReuseIdentifier: K.MenuCell.Identifiers.nameCreateAccountCellIdentifier)
        
        menuControllerTableView.register(UINib(nibName: K.MenuCell.NibNames.settingAndPrivacyBodyCellNibName, bundle: nil), forCellReuseIdentifier: K.MenuCell.Identifiers.settingAndPrivacyBodyCellIdentifier)
        
        menuControllerTableView.register(UINib(nibName: K.MenuCell.NibNames.settingAndPrivacyHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.MenuCell.Identifiers.settingAndPrivacyHeaderCellIdentifier)
        
        menuControllerTableView.register(UINib(nibName: K.MenuCell.NibNames.videosMemoriesSavedAllCellNibName, bundle: nil), forCellReuseIdentifier: K.MenuCell.Identifiers.videosMemoriesSavedAllCellIdentifier)
        
    }

}

extension MenuController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = menuControllerTableView.dequeueReusableCell(withIdentifier: K.MenuCell.Identifiers.nameCreateAccountCellIdentifier, for: indexPath) as! NameCreateAccountCell
            return cell
        case 1:
            let cell = menuControllerTableView.dequeueReusableCell(withIdentifier: K.MenuCell.Identifiers.videosMemoriesSavedAllCellIdentifier, for: indexPath) as! VideosMemoriesSavedAllCell
            return cell
        case 2:
            let cell = menuControllerTableView.dequeueReusableCell(withIdentifier: K.MenuCell.Identifiers.helpAndSupportBodyCellIdentifier, for: indexPath) as! HelpAndSupportBodyCell
            return cell
        case 3:
            let cell = menuControllerTableView.dequeueReusableCell(withIdentifier: K.MenuCell.Identifiers.settingAndPrivacyBodyCellIdentifier, for: indexPath) as! SettingandPrivacyBodyCell
            return cell
        case 4:
            let cell = menuControllerTableView.dequeueReusableCell(withIdentifier: K.MenuCell.Identifiers.alsoFromMetaBodyCellIdentifier, for: indexPath) as! AlsoFromMetaBodyCell
            return cell
        case 5:
            let cell = menuControllerTableView.dequeueReusableCell(withIdentifier: K.MenuCell.Identifiers.logoutCellCellIdentifier, for: indexPath) as! LogoutCell
            return cell
        default:
            return UITableViewCell()
        }
    }
}

extension MenuController :UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
        case 1:
            return 400
        case 2:
            return 350
        case 3:
            return 350
        case 4:
            return 230
        case 5:
            return 60
        default:
            return 100
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        switch section {
        case 0:
            return UITableViewCell()
        case 1:
            return UITableViewCell()
        case 2:
            let cell = menuControllerTableView.dequeueReusableCell(withIdentifier: K.MenuCell.Identifiers.helpAndSupportHeaderCellIdentifier) as! HelpAndSupportHeader
            return cell
        case 3:
            let cell = menuControllerTableView.dequeueReusableCell(withIdentifier: K.MenuCell.Identifiers.settingAndPrivacyHeaderCellIdentifier) as! SettingAndPrivacyCell
            return cell
        case 4:
            let cell = menuControllerTableView.dequeueReusableCell(withIdentifier: K.MenuCell.Identifiers.alsoFromMetaHeaderCellIdentifier) as! AlsoFromMetaHeaderCell
            return cell
        case 5:
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 10
        case 1:
            return 10
        case 2:
            return 60
        case 3:
            return 60
        case 4:
            return 60
        case 5:
            return 10
        default:
            return 100
        }
    }
}
