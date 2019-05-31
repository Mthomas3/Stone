//
//  AuthenticationLabels.swift
//  Stone
//
//  Created by Thomas Martins on 30/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

@IBDesignable final class AuthenticationLabels : UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.textColor = UIColor.black
        self.font = StyleManager.LABEL_FONT
    }
    
}
