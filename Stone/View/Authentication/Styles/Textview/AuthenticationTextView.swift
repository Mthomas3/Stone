//
//  AuthenticationTextVie.swift
//  Stone
//
//  Created by Thomas Martins on 30/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

@IBDesignable final class AuthenticationTextView: UITextView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.font = StyleManager.TEXTVIEW_FONT
        self.textColor = UIColor.lightGray
    }
    
}
