//
//  BackButton.swift
//  Stone
//
//  Created by Thomas Martins on 21/07/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

class BackButton: UIButton {
    
    /* Create a back button Navigation */
    
    override func awakeFromNib() {
        guard let titleLabel = titleLabel else { return }
        let font = UIFont(name: "Font Awesome 5 Pro", size: titleLabel.font.pointSize)
        titleLabel.font = font!
        
        setTitle("\u{f104}", for: state)
        self.setTitleColor(UIColor.yellow, for: .normal)
        self.setTitleColor(StringToUIColor.getUiColor(hexString: StyleManager.PRIMARY_COLOR), for: .normal)
    }
}
