//
//  AlsoFromMetaBodyCell.swift
//  FacebookCloneAllScreensUITabBar
//
//  Created by Elexoft on 29/11/2024.
//

import UIKit

protocol AlsoFromMetaBdyDelegate {
    func AlsoFromMetaPressButton(withTag tag: Int)
}

class AlsoFromMetaBodyCell: UITableViewCell {

    @IBOutlet weak var threadsButton: UIButton!
    @IBOutlet weak var messengerButton: UIButton!
    @IBOutlet weak var instgramButton: UIButton!
    @IBOutlet weak var whatsappButton: UIButton!
    
    var delegate: AlsoFromMetaBdyDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        threadsButton.tag = 1
        messengerButton.tag = 2
        instgramButton.tag = 3
        whatsappButton.tag = 4
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        delegate?.AlsoFromMetaPressButton(withTag: sender.tag)
    }
}
