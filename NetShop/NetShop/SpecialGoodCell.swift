//
//  SpecialGoodCell.swift
//  NetShop
//
//  Created by ucsmy on 16/8/1.
//  Copyright © 2016年 ucsmy. All rights reserved.
//

import UIKit

class SpecialGoodCell: UITableViewCell {

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var goodImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
