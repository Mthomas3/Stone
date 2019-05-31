//
//  UILabelText.swift
//  Stone
//
//  Created by Thomas Martins on 31/05/2019.
//  Copyright © 2019 Thomas Martins. All rights reserved.
//

import UIKit

@IBDesignable final class UILabelText : UILabel {
    
    @IBInspectable public var colorText: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.textColor = StringToUIColor.getUiColor(hexString: colorText ?? StyleManager.DEFAULT_COLOR)
        self.font = StyleManager.LABEL_TEXT_FONT
    }
}
