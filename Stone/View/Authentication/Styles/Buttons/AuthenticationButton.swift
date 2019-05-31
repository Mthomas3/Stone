//
//  AuthenticationButton.swift
//  Stone
//
//  Created by Thomas Martins on 30/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

@IBDesignable final class AuthenticationButton: UIButton {
    
    @IBInspectable public var titleButton: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = StringToUIColor.getUiColor(hexString: StyleManager.SECONDARY_COLOR)
        self.setTitle(titleButton, for: .normal)
        self.layer.cornerRadius = 24
        self.setTitleColor(StringToUIColor.getUiColor(hexString: StyleManager.PRIMARY_COLOR), for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)

        
    }
}
