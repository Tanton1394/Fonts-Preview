//
//  FontsPreviewCell.swift
//  FontsPreview
//
//  Created by Tanton.Green on 2017/3/27.
//  Copyright © 2017年 Tanton.Green. All rights reserved.
//

import UIKit

class FontsPreviewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var note2Label: UILabel!
    
}
