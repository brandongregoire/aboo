//
//  roundBtn.swift
//  abooapplication
//
//  Created by Brandon Gregoire on 2016-11-24.
//  Copyright © 2016 brandongregoire. All rights reserved.
//

import UIKit

class roundBtn: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GREY, green: SHADOW_GREY, blue: SHADOW_GREY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        imageView?.contentMode = .scaleAspectFit
        layer.cornerRadius = 2.0
    }
    
    
}
