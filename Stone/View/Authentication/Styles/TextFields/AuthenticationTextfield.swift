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
    @IBInspectable public var placeHolderColor: String?
    @IBInspectable public var isCorrectionEnable: Bool = false

    public var istoto: Bool?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 14.0
        self.attributedPlaceholder = NSAttributedString(string: placeHolder ?? "",
                                                        attributes: [NSAttributedString.Key.foregroundColor: StringToUIColor.getUiColor(hexString: placeHolderColor ?? "#fff")])
        
        self.layer.borderWidth = 0.2
        self.layer.borderColor = UIColor.black.cgColor
        
        let paddingView = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 15, height: self.frame.height)))
        self.leftView = paddingView
        self.leftViewMode = .always
        
        self.font = StyleManager.TEXTFIELD_FONT
        self.textColor = StringToUIColor.getUiColor(hexString: StyleManager.PRIMARY_COLOR)
        
        if self.isCorrectionEnable == false {
            self.autocorrectionType = .no
        }
    }
}
