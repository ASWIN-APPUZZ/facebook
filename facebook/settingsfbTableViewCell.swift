//
//  settingsfbTableViewCell.swift
//  facebook
//
//  Created by ASWIN A on 04/10/23.
//

import UIKit

class settingsfbTableViewCell: UITableViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    
    @IBOutlet weak var setting: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
