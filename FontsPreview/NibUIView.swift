//
//  NibUIView.swift
//  FontsPreview
//
//  Created by Tanton.Green on 2017/3/27.
//  Copyright © 2017年 Tanton.Green. All rights reserved.
//

import UIKit

class NibUIView: UIView {
    var view: UIView!
    
    func loadXib(_ nibName: String) {
        view = loadViewFromNib(nibName)
        
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        
        addSubview(view)
    }
    
    func loadViewFromNib(_ nibName: String) -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
}
