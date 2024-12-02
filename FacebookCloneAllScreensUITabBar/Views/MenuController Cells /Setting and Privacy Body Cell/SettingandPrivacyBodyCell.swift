//
//  SettingandPrivacyBodyCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 29/11/2024.
//

import UIKit

protocol SettingAndPrivacyBodyCellDelegate: AnyObject {
    func SettingPrivacyPressButton(withTag tag: Int)
}

class SettingandPrivacyBodyCell: UITableViewCell {

    
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var privicayCenterButton: UIButton!
    @IBOutlet weak var deviceRequestButton: UIButton!
    @IBOutlet weak var recentActivitiesButton: UIButton!
    @IBOutlet weak var orderAndPaymentsButton: UIButton!
    @IBOutlet weak var linkHistory: UIButton!
    
    var delegate: SettingAndPrivacyBodyCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        settingButton.tag = 1
        privicayCenterButton.tag = 2
        deviceRequestButton.tag = 3
        recentActivitiesButton.tag = 4
        orderAndPaymentsButton.tag = 5
        linkHistory.tag = 6
    }
    
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        delegate?.SettingPrivacyPressButton(withTag: sender.tag)
    }
    
}
