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
    @IBInspectable public var backgroundColorHex: String?
    @IBInspectable public var placeHolder: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = StringToUIColor.getUiColor(hexString: backgroundColorHex ?? "#ffffff")
        self.placeHolder = placeHolder ?? ""
        self.setTitle(titleButton, for: .normal)
        self.layer.cornerRadius = 14
        self.setTitleColor(StringToUIColor.getUiColor(hexString: "#5B5B77"), for: .normal)
        self.titleLabel?.font = UIFont(name: "Font Awesome 5 Brands", size: 20.0)
    }
}
