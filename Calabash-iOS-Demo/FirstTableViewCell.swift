//
//  FirstTableViewCell.swift
//  Calabash-iOS-Demo
//
//  Created by Slbd on 3/22/17.
//  Copyright © 2017 Mohammad Merajul Islam Molla. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
