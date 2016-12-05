//
//  roundImg.swift
//  abooapplication
//
//  Created by Brandon Gregoire on 2016-11-24.
//  Copyright © 2016 brandongregoire. All rights reserved.
//

import UIKit

class roundImg: UIImageView {
    override func layoutSubviews() {
        layer.cornerRadius = 25.0
        clipsToBounds = true
    }
}
