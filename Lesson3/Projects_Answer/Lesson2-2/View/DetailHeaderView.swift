//
//  DetailHeaderView.swift
//  Lesson2-2
//
//  Created by powerchip on 2019/9/24.
//  Copyright © 2019 powerchip. All rights reserved.
//

import UIKit

class DetailHeaderView: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
}
