//
//  HelpAndSupportBodyCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 29/11/2024.
//

import UIKit

protocol HelpAndSupportBodyCellDelegate: AnyObject {
    func HelpPressButton(withTag tag: Int)
}

class HelpAndSupportBodyCell: UITableViewCell {

    @IBOutlet weak var helpcenterButton: UIButton!
    @IBOutlet weak var accountStatusButton: UIButton!
    @IBOutlet weak var supportInboxButon: UIButton!
    @IBOutlet weak var reportaProblemButton: UIButton!
    @IBOutlet weak var safetyButton: UIButton!
    @IBOutlet weak var termAndPoliciesButton: UIButton!
    
    var delegate: HelpAndSupportBodyCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        helpcenterButton.tag = 1
        accountStatusButton.tag = 2
        supportInboxButon.tag = 3
        reportaProblemButton.tag = 4
        safetyButton.tag = 5
        termAndPoliciesButton.tag = 6
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        delegate?.HelpPressButton(withTag: sender.tag)
    }
    
}
