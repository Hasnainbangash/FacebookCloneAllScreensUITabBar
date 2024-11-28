//
//  NotificationsController.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 28/11/2024.
//

import UIKit

class NotificationsController: UIViewController {
    
    @IBOutlet weak var notificationsControllerTableView: UITableView!
    
    var newNotifications = [
        
        Notifications(mainImage: UIImage(named: "picture5")!, notificationLabel: "Someone Added content to Story", timeLabel: "1"),
        
    ]
    
    var todayNotifications = [
        
        Notifications(mainImage: UIImage(named: "picture3")!, notificationLabel: "So many books, so little time.", timeLabel: "2"),
        
        Notifications(mainImage: UIImage(named: "picture1")!, notificationLabel: "You only live once, but if you do it right, once is enough.", timeLabel: "3"),
        
        Notifications(mainImage: UIImage(named: "picture4")!, notificationLabel: "Nothing is impossible, the word itself says I’m possible.", timeLabel: "5"),
        
        Notifications(mainImage: UIImage(named: "picture2")!, notificationLabel: "Real change, enduring change, happens one step at a time.", timeLabel: "14")
    
    ]
    
    var earlierNotifications = [
        
        Notifications(mainImage: UIImage(named: "picture5")!, notificationLabel: "You missed the content", timeLabel: "2"),
        
        Notifications(mainImage: UIImage(named: "picture3")!, notificationLabel: "You only live once, but if you do it right, once is enough.", timeLabel: "3"),
        
        Notifications(mainImage: UIImage(named: "picture1")!, notificationLabel: "Nothing is impossible, the word itself says I’m possible.", timeLabel: "9"),
        
        Notifications(mainImage: UIImage(named: "picture4")!, notificationLabel: "Real change, enduring change, happens one step at a time.", timeLabel: "14")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        notificationsControllerTableView.dataSource = self
        notificationsControllerTableView.delegate = self
        
        notificationsControllerTableView.register(UINib(nibName: K.NotificationsCell.NibNames.earlierHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.NotificationsCell.Identifiers.earlierHeaderCellIdentifier)
        
        notificationsControllerTableView.register(UINib(nibName: K.NotificationsCell.NibNames.newHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.NotificationsCell.Identifiers.newHeaderCellIdentifier)
        
        notificationsControllerTableView.register(UINib(nibName: K.NotificationsCell.NibNames.newTodayEarlierBodyCellNibName, bundle: nil), forCellReuseIdentifier: K.NotificationsCell.Identifiers.newTodayEarlierBodyCellIdentifier)
        
        notificationsControllerTableView.register(UINib(nibName: K.NotificationsCell.NibNames.notificationsHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.NotificationsCell.Identifiers.notificationsHeaderCellIdentifier)
        
        notificationsControllerTableView.register(UINib(nibName: K.NotificationsCell.NibNames.todayHeaderCellNibName, bundle: nil), forCellReuseIdentifier: K.NotificationsCell.Identifiers.todayHeaderCellIdentifier)
        
    }

}

extension NotificationsController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 0
        case 1:
            return newNotifications.count
        case 2:
            return todayNotifications.count
        case 3:
            return earlierNotifications.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
            
        case 0:
            return UITableViewCell()
        
        case 1:
            
            let newNotification = newNotifications[indexPath.row]
            
            let cell = notificationsControllerTableView.dequeueReusableCell(withIdentifier: K.NotificationsCell.Identifiers.newTodayEarlierBodyCellIdentifier, for: indexPath) as! NewTodayEarlierBodyCell
            
            cell.configureData(
                mainImage: newNotification.mainImage,
                notificationLabel: newNotification.notificationLabel,
                timeLabel: newNotification.timeLabel
            )
            
            return cell
            
        case 2:
            
            let todayNotification = todayNotifications[indexPath.row]

            let cell = notificationsControllerTableView.dequeueReusableCell(withIdentifier: K.NotificationsCell.Identifiers.newTodayEarlierBodyCellIdentifier, for: indexPath) as! NewTodayEarlierBodyCell
            
            cell.configureData(
                mainImage: todayNotification.mainImage,
                notificationLabel: todayNotification.notificationLabel,
                timeLabel: todayNotification.timeLabel
            )
            
            return cell
            
        case 3:
            
            let earlierNotification = earlierNotifications[indexPath.row]

            let cell = notificationsControllerTableView.dequeueReusableCell(withIdentifier: K.NotificationsCell.Identifiers.newTodayEarlierBodyCellIdentifier, for: indexPath) as! NewTodayEarlierBodyCell
            
            cell.configureData(
                mainImage: earlierNotification.mainImage,
                notificationLabel: earlierNotification.notificationLabel,
                timeLabel: earlierNotification.timeLabel
            )
            
            return cell
            
            
        default:
            return UITableViewCell()
        }
        
    }
}

extension NotificationsController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 5
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
            
            let cell = notificationsControllerTableView.dequeueReusableCell(withIdentifier: K.NotificationsCell.Identifiers.notificationsHeaderCellIdentifier) as! NotificationsHeaderCell
            return cell
            
        case 1:
            
            let cell = notificationsControllerTableView.dequeueReusableCell(withIdentifier: K.NotificationsCell.Identifiers.newHeaderCellIdentifier) as! NewHeaderCell
            return cell
    
        case 2:
            
            let cell = notificationsControllerTableView.dequeueReusableCell(withIdentifier: K.NotificationsCell.Identifiers.todayHeaderCellIdentifier) as! TodayHeaderCell
            return cell
            
        case 3:
            
            let cell = notificationsControllerTableView.dequeueReusableCell(withIdentifier: K.NotificationsCell.Identifiers.earlierHeaderCellIdentifier) as! EarlierHeaderCell
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
