//
//  TableViewCell.swift
//  Image Search
//
//  Created by 高橋健太 on 2015/06/21.
//  Copyright (c) 2015年 高橋健太. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var photo: UIImageView!

    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
