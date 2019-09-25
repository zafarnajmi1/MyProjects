//
//  videoCell.swift
//  TestVideoPlayer
//
//  Created by Apple on 9/24/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class videoCell: UITableViewCell {

    @IBOutlet weak var lblname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .blue
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
