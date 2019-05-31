//
//  AuthenticationTextfield.swift
//  Stone
//
//  Created by Thomas Martins on 30/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

@IBDesignable final class AuthenticationTextfield: UITextField {
    
    @IBInspectable public var placeHolder: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.placeholder = placeHolder
        self.font = StyleManager.TEXTFIELD_FONT
        self.textColor = StringToUIColor.getUiColor(hexString: StyleManager.PRIMARY_COLOR)
        
    }
}
