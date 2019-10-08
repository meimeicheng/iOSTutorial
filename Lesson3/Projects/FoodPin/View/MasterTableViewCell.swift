//
//  MasterTableViewCell.swift
//  Lesson2-2
//
//  Created by powerchip on 2019/9/20.
//  Copyright © 2019 powerchip. All rights reserved.
//

import UIKit

class MasterTableViewCell: UITableViewCell {

    @IBOutlet var smallImageView: UIImageView!{
        didSet{
            smallImageView.layer.cornerRadius = 30
        }
    }
    
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
}
