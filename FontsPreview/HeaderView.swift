//
//  HeaderView.swift
//  FontsPreview
//
//  Created by Tanton.Green on 2017/3/27.
//  Copyright © 2017年 Tanton.Green. All rights reserved.
//

import UIKit

class HeaderView: NibUIView {
    
    // 公共部分
    let nibName: String = "HeaderView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        loadXib(nibName)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        loadXib(nibName)
    }
    
    // 自定义部分
    @IBOutlet weak var titleLabel: UILabel!
}
